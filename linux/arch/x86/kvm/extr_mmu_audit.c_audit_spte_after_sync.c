
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_mmu_page {scalar_t__ unsync; } ;
struct TYPE_3__ {scalar_t__ audit_point; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 scalar_t__ AUDIT_POST_SYNC ;
 int __pa (int *) ;
 int audit_printk (TYPE_2__*,char*,struct kvm_mmu_page*) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void audit_spte_after_sync(struct kvm_vcpu *vcpu, u64 *sptep, int level)
{
 struct kvm_mmu_page *sp = page_header(__pa(sptep));

 if (vcpu->kvm->arch.audit_point == AUDIT_POST_SYNC && sp->unsync)
  audit_printk(vcpu->kvm, "meet unsync sp(%p) after sync "
        "root.\n", sp);
}
