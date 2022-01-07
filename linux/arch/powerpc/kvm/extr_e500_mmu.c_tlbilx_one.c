
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;
typedef int gva_t ;


 int inval_gtlbe_on_host (struct kvmppc_vcpu_e500*,int,int) ;
 int kvmppc_e500_gtlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;
 int kvmppc_e500_tlb_index (struct kvmppc_vcpu_e500*,int ,int,int,int) ;

__attribute__((used)) static void tlbilx_one(struct kvmppc_vcpu_e500 *vcpu_e500, int pid,
         gva_t ea)
{
 int tlbsel, esel;

 for (tlbsel = 0; tlbsel < 2; tlbsel++) {
  esel = kvmppc_e500_tlb_index(vcpu_e500, ea, tlbsel, pid, -1);
  if (esel >= 0) {
   inval_gtlbe_on_host(vcpu_e500, tlbsel, esel);
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, tlbsel, esel);
   break;
  }
 }
}
