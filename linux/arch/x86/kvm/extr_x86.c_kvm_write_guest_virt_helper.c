
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {int dummy; } ;
struct TYPE_4__ {TYPE_1__* walk_mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gva_t ;
typedef scalar_t__ gpa_t ;
struct TYPE_3__ {scalar_t__ (* gva_to_gpa ) (struct kvm_vcpu*,int,int ,struct x86_exception*) ;} ;


 int PAGE_SIZE ;
 scalar_t__ UNMAPPED_GVA ;
 int X86EMUL_CONTINUE ;
 int X86EMUL_IO_NEEDED ;
 int X86EMUL_PROPAGATE_FAULT ;
 int kvm_vcpu_write_guest (struct kvm_vcpu*,scalar_t__,void*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ stub1 (struct kvm_vcpu*,int,int ,struct x86_exception*) ;

__attribute__((used)) static int kvm_write_guest_virt_helper(gva_t addr, void *val, unsigned int bytes,
          struct kvm_vcpu *vcpu, u32 access,
          struct x86_exception *exception)
{
 void *data = val;
 int r = X86EMUL_CONTINUE;

 while (bytes) {
  gpa_t gpa = vcpu->arch.walk_mmu->gva_to_gpa(vcpu, addr,
            access,
            exception);
  unsigned offset = addr & (PAGE_SIZE-1);
  unsigned towrite = min(bytes, (unsigned)PAGE_SIZE - offset);
  int ret;

  if (gpa == UNMAPPED_GVA)
   return X86EMUL_PROPAGATE_FAULT;
  ret = kvm_vcpu_write_guest(vcpu, gpa, data, towrite);
  if (ret < 0) {
   r = X86EMUL_IO_NEEDED;
   goto out;
  }

  bytes -= towrite;
  data += towrite;
  addr += towrite;
 }
out:
 return r;
}
