
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvmppc_vcpu_book3s {int* context_id; scalar_t__ vsid_next; int * vsid_pool; } ;
struct kvm_vcpu {int dummy; } ;


 int CTX_TO_VSID (int,int) ;
 int SID_CONTEXTS ;
 int __destroy_context (int) ;
 int __init_new_context () ;
 scalar_t__ __va (int) ;
 int htab ;
 int htabmask ;
 int kvmppc_mmu_hpte_init (struct kvm_vcpu*) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;

int kvmppc_mmu_init(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_book3s *vcpu3s = to_book3s(vcpu);
 int err;
 ulong sdr1;
 int i;
 int j;

 for (i = 0; i < SID_CONTEXTS; i++) {
  err = __init_new_context();
  if (err < 0)
   goto init_fail;
  vcpu3s->context_id[i] = err;


  for (j = 0; j < 16; j++)
   vcpu3s->vsid_pool[(i * 16) + j] = CTX_TO_VSID(err, j);
 }

 vcpu3s->vsid_next = 0;


 asm ( "mfsdr1 %0" : "=r"(sdr1) );
 htabmask = ((sdr1 & 0x1FF) << 16) | 0xFFC0;
 htab = (ulong)__va(sdr1 & 0xffff0000);

 kvmppc_mmu_hpte_init(vcpu);

 return 0;

init_fail:
 for (j = 0; j < i; j++) {
  if (!vcpu3s->context_id[j])
   continue;

  __destroy_context(to_book3s(vcpu)->context_id[j]);
 }

 return -1;
}
