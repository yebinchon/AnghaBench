
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ciabr; unsigned long dawr; unsigned long dawrx; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 unsigned long CIABR_PRIV ;
 unsigned long CIABR_PRIV_HYPER ;
 unsigned long DABRX_HYP ;
 int H_P2 ;
 int H_P3 ;
 int H_P4 ;


 int H_SUCCESS ;
 int H_TOO_HARD ;
 int H_UNSUPPORTED_FLAG_START ;
 int kvmppc_power8_compatible (struct kvm_vcpu*) ;
 int ppc_breakpoint_available () ;

__attribute__((used)) static int kvmppc_h_set_mode(struct kvm_vcpu *vcpu, unsigned long mflags,
        unsigned long resource, unsigned long value1,
        unsigned long value2)
{
 switch (resource) {
 case 129:
  if (!kvmppc_power8_compatible(vcpu))
   return H_P2;
  if (value2)
   return H_P4;
  if (mflags)
   return H_UNSUPPORTED_FLAG_START;

  if ((value1 & CIABR_PRIV) == CIABR_PRIV_HYPER)
   return H_P3;
  vcpu->arch.ciabr = value1;
  return H_SUCCESS;
 case 128:
  if (!kvmppc_power8_compatible(vcpu))
   return H_P2;
  if (!ppc_breakpoint_available())
   return H_P2;
  if (mflags)
   return H_UNSUPPORTED_FLAG_START;
  if (value2 & DABRX_HYP)
   return H_P4;
  vcpu->arch.dawr = value1;
  vcpu->arch.dawrx = value2;
  return H_SUCCESS;
 default:
  return H_TOO_HARD;
 }
}
