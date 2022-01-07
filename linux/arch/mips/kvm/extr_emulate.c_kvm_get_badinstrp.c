
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int host_cp0_badinstrp; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ cpu_has_badinstrp ;
 int kvm_get_inst (int *,struct kvm_vcpu*,int *) ;

int kvm_get_badinstrp(u32 *opc, struct kvm_vcpu *vcpu, u32 *out)
{
 if (cpu_has_badinstrp) {
  *out = vcpu->arch.host_cp0_badinstrp;
  return 0;
 } else {
  return kvm_get_inst(opc, vcpu, out);
 }
}
