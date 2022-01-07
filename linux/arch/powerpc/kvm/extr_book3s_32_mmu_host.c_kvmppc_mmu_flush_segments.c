
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_book3s_shadow_vcpu {int * sr; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int SR_INVALID ;
 int dprintk_sr (char*,int) ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;

void kvmppc_mmu_flush_segments(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);

 dprintk_sr("MMU: flushing all segments (%d)\n", ARRAY_SIZE(svcpu->sr));
 for (i = 0; i < ARRAY_SIZE(svcpu->sr); i++)
  svcpu->sr[i] = SR_INVALID;

 svcpu_put(svcpu);
}
