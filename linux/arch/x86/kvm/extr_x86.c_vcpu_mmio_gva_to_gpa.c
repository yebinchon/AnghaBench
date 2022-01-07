
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {int dummy; } ;
struct TYPE_4__ {unsigned long mmio_gfn; TYPE_2__* walk_mmu; int mmio_access; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef unsigned long gpa_t ;
struct TYPE_6__ {int (* get_cpl ) (struct kvm_vcpu*) ;} ;
struct TYPE_5__ {unsigned long (* gva_to_gpa ) (struct kvm_vcpu*,unsigned long,int,struct x86_exception*) ;} ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PFERR_USER_MASK ;
 int PFERR_WRITE_MASK ;
 unsigned long UNMAPPED_GVA ;
 TYPE_3__* kvm_x86_ops ;
 int permission_fault (struct kvm_vcpu*,TYPE_2__*,int ,int ,int) ;
 int stub1 (struct kvm_vcpu*) ;
 unsigned long stub2 (struct kvm_vcpu*,unsigned long,int,struct x86_exception*) ;
 int trace_vcpu_match_mmio (unsigned long,unsigned long,int,int) ;
 int vcpu_is_mmio_gpa (struct kvm_vcpu*,unsigned long,unsigned long,int) ;
 scalar_t__ vcpu_match_mmio_gva (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static int vcpu_mmio_gva_to_gpa(struct kvm_vcpu *vcpu, unsigned long gva,
    gpa_t *gpa, struct x86_exception *exception,
    bool write)
{
 u32 access = ((kvm_x86_ops->get_cpl(vcpu) == 3) ? PFERR_USER_MASK : 0)
  | (write ? PFERR_WRITE_MASK : 0);






 if (vcpu_match_mmio_gva(vcpu, gva)
     && !permission_fault(vcpu, vcpu->arch.walk_mmu,
     vcpu->arch.mmio_access, 0, access)) {
  *gpa = vcpu->arch.mmio_gfn << PAGE_SHIFT |
     (gva & (PAGE_SIZE - 1));
  trace_vcpu_match_mmio(gva, *gpa, write, 0);
  return 1;
 }

 *gpa = vcpu->arch.walk_mmu->gva_to_gpa(vcpu, gva, access, exception);

 if (*gpa == UNMAPPED_GVA)
  return -1;

 return vcpu_is_mmio_gpa(vcpu, gva, *gpa, write);
}
