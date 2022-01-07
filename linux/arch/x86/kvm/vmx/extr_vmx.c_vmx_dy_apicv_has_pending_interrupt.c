
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pi_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int pi_is_pir_empty (struct pi_desc*) ;
 scalar_t__ pi_test_on (struct pi_desc*) ;
 scalar_t__ pi_test_sn (struct pi_desc*) ;
 struct pi_desc* vcpu_to_pi_desc (struct kvm_vcpu*) ;

__attribute__((used)) static bool vmx_dy_apicv_has_pending_interrupt(struct kvm_vcpu *vcpu)
{
 struct pi_desc *pi_desc = vcpu_to_pi_desc(vcpu);

 return pi_test_on(pi_desc) ||
  (pi_test_sn(pi_desc) && !pi_is_pir_empty(pi_desc));
}
