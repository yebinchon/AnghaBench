
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {scalar_t__ direct_map; scalar_t__ cr3; } ;
struct kvm_async_pf {int gva; TYPE_3__ arch; scalar_t__ wakeup_all; } ;
struct TYPE_4__ {scalar_t__ direct_map; scalar_t__ (* get_cr3 ) (struct kvm_vcpu*) ;int (* page_fault ) (struct kvm_vcpu*,int ,int ,int) ;} ;


 int kvm_mmu_reload (struct kvm_vcpu*) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*,int ,int ,int) ;
 scalar_t__ unlikely (int) ;

void kvm_arch_async_page_ready(struct kvm_vcpu *vcpu, struct kvm_async_pf *work)
{
 int r;

 if ((vcpu->arch.mmu->direct_map != work->arch.direct_map) ||
       work->wakeup_all)
  return;

 r = kvm_mmu_reload(vcpu);
 if (unlikely(r))
  return;

 if (!vcpu->arch.mmu->direct_map &&
       work->arch.cr3 != vcpu->arch.mmu->get_cr3(vcpu))
  return;

 vcpu->arch.mmu->page_fault(vcpu, work->gva, 0, 1);
}
