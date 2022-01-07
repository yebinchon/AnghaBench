
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {TYPE_1__* gtlb_params; } ;
struct TYPE_6__ {TYPE_2__* shared; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {int mas2; } ;
struct TYPE_4__ {int ways; int entries; } ;


 int get_tlb_esel_bit (struct kvm_vcpu*) ;
 scalar_t__ gtlb0_set_base (struct kvmppc_vcpu_e500*,int ) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned int get_tlb_esel(struct kvm_vcpu *vcpu, int tlbsel)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int esel = get_tlb_esel_bit(vcpu);

 if (tlbsel == 0) {
  esel &= vcpu_e500->gtlb_params[0].ways - 1;
  esel += gtlb0_set_base(vcpu_e500, vcpu->arch.shared->mas2);
 } else {
  esel &= vcpu_e500->gtlb_params[tlbsel].entries - 1;
 }

 return esel;
}
