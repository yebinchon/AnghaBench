
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_book3s_shadow_vcpu {TYPE_1__* slb; scalar_t__ slb_max; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ esid; } ;


 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;

void kvmppc_mmu_flush_segments(struct kvm_vcpu *vcpu)
{
 struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);
 svcpu->slb_max = 0;
 svcpu->slb[0].esid = 0;
 svcpu_put(svcpu);
}
