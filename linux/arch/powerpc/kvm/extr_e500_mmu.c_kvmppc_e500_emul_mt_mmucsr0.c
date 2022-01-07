
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct kvmppc_vcpu_e500 {int vcpu; TYPE_1__* gtlb_params; } ;
struct TYPE_2__ {int entries; } ;


 int EMULATE_DONE ;
 int MMUCSR0_TLB0FI ;
 int MMUCSR0_TLB1FI ;
 int kvmppc_core_flush_tlb (int *) ;
 int kvmppc_e500_gtlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;

int kvmppc_e500_emul_mt_mmucsr0(struct kvmppc_vcpu_e500 *vcpu_e500, ulong value)
{
 int esel;

 if (value & MMUCSR0_TLB0FI)
  for (esel = 0; esel < vcpu_e500->gtlb_params[0].entries; esel++)
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, 0, esel);
 if (value & MMUCSR0_TLB1FI)
  for (esel = 0; esel < vcpu_e500->gtlb_params[1].entries; esel++)
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, 1, esel);


 kvmppc_core_flush_tlb(&vcpu_e500->vcpu);

 return EMULATE_DONE;
}
