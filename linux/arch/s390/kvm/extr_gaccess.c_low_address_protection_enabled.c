
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union ctlreg0 {int lap; int val; } ;
union asce {scalar_t__ p; } ;
struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int psw_t ;
struct TYPE_6__ {scalar_t__ dat; } ;
struct TYPE_4__ {int gpsw; int * gcr; } ;


 TYPE_3__ psw_bits (int ) ;

__attribute__((used)) static int low_address_protection_enabled(struct kvm_vcpu *vcpu,
       const union asce asce)
{
 union ctlreg0 ctlreg0 = {.val = vcpu->arch.sie_block->gcr[0]};
 psw_t *psw = &vcpu->arch.sie_block->gpsw;

 if (!ctlreg0.lap)
  return 0;
 if (psw_bits(*psw).dat && asce.p)
  return 0;
 return 1;
}
