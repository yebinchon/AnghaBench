
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int H_TLBIE_P1_ENC (int,int ,int) ;
 int H_TLB_INVALIDATE ;
 int TLBIEL_INVAL_SET_LPID ;
 int kvmhv_on_pseries () ;
 long plpar_hcall_norets (int ,int ,unsigned int,int ) ;
 int pr_err (char*,long) ;
 int radix__flush_pwc_lpid (unsigned int) ;

__attribute__((used)) static void kvmppc_radix_flush_pwc(struct kvm *kvm, unsigned int lpid)
{
 long rc;

 if (!kvmhv_on_pseries()) {
  radix__flush_pwc_lpid(lpid);
  return;
 }

 rc = plpar_hcall_norets(H_TLB_INVALIDATE, H_TLBIE_P1_ENC(1, 0, 1),
    lpid, TLBIEL_INVAL_SET_LPID);
 if (rc)
  pr_err("KVM: TLB PWC invalidation hcall failed, rc=%ld\n", rc);
}
