
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pvr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static void kvmppc_set_pvr_hv(struct kvm_vcpu *vcpu, u32 pvr)
{
 vcpu->arch.pvr = pvr;
}
