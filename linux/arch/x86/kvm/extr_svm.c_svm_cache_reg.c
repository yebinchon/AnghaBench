
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;


 int BUG () ;
 int BUG_ON (int) ;

 int kvm_read_cr3 (struct kvm_vcpu*) ;
 int load_pdptrs (struct kvm_vcpu*,int ,int ) ;
 int npt_enabled ;

__attribute__((used)) static void svm_cache_reg(struct kvm_vcpu *vcpu, enum kvm_reg reg)
{
 switch (reg) {
 case 128:
  BUG_ON(!npt_enabled);
  load_pdptrs(vcpu, vcpu->arch.walk_mmu, kvm_read_cr3(vcpu));
  break;
 default:
  BUG();
 }
}
