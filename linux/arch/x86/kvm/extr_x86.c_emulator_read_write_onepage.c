
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_exception {int dummy; } ;
struct x86_emulate_ctxt {int dummy; } ;
struct read_write_emulator_ops {int write; int (* read_write_mmio ) (struct kvm_vcpu*,int,unsigned int,void*) ;scalar_t__ (* read_write_emulate ) (struct kvm_vcpu*,int,void*,unsigned int) ;} ;
struct TYPE_2__ {unsigned long gpa_val; scalar_t__ gpa_available; struct x86_emulate_ctxt emulate_ctxt; } ;
struct kvm_vcpu {scalar_t__ mmio_nr_fragments; struct kvm_mmio_fragment* mmio_fragments; TYPE_1__ arch; } ;
struct kvm_mmio_fragment {int gpa; unsigned int len; void* data; } ;
typedef int gpa_t ;


 scalar_t__ KVM_MAX_MMIO_FRAGMENTS ;
 unsigned long PAGE_MASK ;
 int WARN_ON (int) ;
 int X86EMUL_CONTINUE ;
 int X86EMUL_PROPAGATE_FAULT ;
 scalar_t__ emulator_can_use_gpa (struct x86_emulate_ctxt*) ;
 scalar_t__ stub1 (struct kvm_vcpu*,int,void*,unsigned int) ;
 int stub2 (struct kvm_vcpu*,int,unsigned int,void*) ;
 int vcpu_is_mmio_gpa (struct kvm_vcpu*,unsigned long,int,int) ;
 int vcpu_mmio_gva_to_gpa (struct kvm_vcpu*,unsigned long,int*,struct x86_exception*,int) ;

__attribute__((used)) static int emulator_read_write_onepage(unsigned long addr, void *val,
           unsigned int bytes,
           struct x86_exception *exception,
           struct kvm_vcpu *vcpu,
           const struct read_write_emulator_ops *ops)
{
 gpa_t gpa;
 int handled, ret;
 bool write = ops->write;
 struct kvm_mmio_fragment *frag;
 struct x86_emulate_ctxt *ctxt = &vcpu->arch.emulate_ctxt;
 if (vcpu->arch.gpa_available &&
     emulator_can_use_gpa(ctxt) &&
     (addr & ~PAGE_MASK) == (vcpu->arch.gpa_val & ~PAGE_MASK)) {
  gpa = vcpu->arch.gpa_val;
  ret = vcpu_is_mmio_gpa(vcpu, addr, gpa, write);
 } else {
  ret = vcpu_mmio_gva_to_gpa(vcpu, addr, &gpa, exception, write);
  if (ret < 0)
   return X86EMUL_PROPAGATE_FAULT;
 }

 if (!ret && ops->read_write_emulate(vcpu, gpa, val, bytes))
  return X86EMUL_CONTINUE;




 handled = ops->read_write_mmio(vcpu, gpa, bytes, val);
 if (handled == bytes)
  return X86EMUL_CONTINUE;

 gpa += handled;
 bytes -= handled;
 val += handled;

 WARN_ON(vcpu->mmio_nr_fragments >= KVM_MAX_MMIO_FRAGMENTS);
 frag = &vcpu->mmio_fragments[vcpu->mmio_nr_fragments++];
 frag->gpa = gpa;
 frag->data = val;
 frag->len = bytes;
 return X86EMUL_CONTINUE;
}
