
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int epcr; int shadow_epcr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int SPRN_EPCR_GICM ;
 int SPRN_EPCR_ICM ;

void kvmppc_set_epcr(struct kvm_vcpu *vcpu, u32 new_epcr)
{
}
