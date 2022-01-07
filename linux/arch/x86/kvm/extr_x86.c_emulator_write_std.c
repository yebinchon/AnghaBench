
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {int dummy; } ;
struct x86_emulate_ctxt {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
struct TYPE_2__ {int (* get_cpl ) (struct kvm_vcpu*) ;} ;


 int PFERR_USER_MASK ;
 int PFERR_WRITE_MASK ;
 struct kvm_vcpu* emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_write_guest_virt_helper (int ,void*,unsigned int,struct kvm_vcpu*,int ,struct x86_exception*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int emulator_write_std(struct x86_emulate_ctxt *ctxt, gva_t addr, void *val,
         unsigned int bytes, struct x86_exception *exception,
         bool system)
{
 struct kvm_vcpu *vcpu = emul_to_vcpu(ctxt);
 u32 access = PFERR_WRITE_MASK;

 if (!system && kvm_x86_ops->get_cpl(vcpu) == 3)
  access |= PFERR_USER_MASK;

 return kvm_write_guest_virt_helper(addr, val, bytes, vcpu,
        access, exception);
}
