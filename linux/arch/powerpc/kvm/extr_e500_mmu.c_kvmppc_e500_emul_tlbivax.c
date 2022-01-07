
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {int vcpu; TYPE_1__* gtlb_params; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
struct TYPE_2__ {int entries; } ;


 int EMULATE_DONE ;
 int get_cur_pid (struct kvm_vcpu*) ;
 int kvmppc_core_flush_tlb (int *) ;
 int kvmppc_e500_gtlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;
 int kvmppc_e500_tlb_index (struct kvmppc_vcpu_e500*,int,int,int ,int) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_e500_emul_tlbivax(struct kvm_vcpu *vcpu, gva_t ea)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 unsigned int ia;
 int esel, tlbsel;

 ia = (ea >> 2) & 0x1;


 tlbsel = (ea >> 3) & 0x1;

 if (ia) {

  for (esel = 0; esel < vcpu_e500->gtlb_params[tlbsel].entries;
       esel++)
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, tlbsel, esel);
 } else {
  ea &= 0xfffff000;
  esel = kvmppc_e500_tlb_index(vcpu_e500, ea, tlbsel,
    get_cur_pid(vcpu), -1);
  if (esel >= 0)
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, tlbsel, esel);
 }


 kvmppc_core_flush_tlb(&vcpu_e500->vcpu);

 return EMULATE_DONE;
}
