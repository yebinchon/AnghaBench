
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_nested_guest {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int get_ap (unsigned long) ;
 long get_epn (unsigned long) ;
 int get_is (unsigned long) ;
 int get_lpid (unsigned long) ;
 int get_prs (unsigned int) ;
 int get_r (unsigned int) ;
 int get_ric (unsigned int) ;
 int kvmhv_emulate_tlbie_all_lpid (struct kvm_vcpu*,int) ;
 int kvmhv_emulate_tlbie_lpid (struct kvm_vcpu*,struct kvm_nested_guest*,int) ;
 int kvmhv_emulate_tlbie_tlb_addr (struct kvm_vcpu*,int,int,long) ;
 struct kvm_nested_guest* kvmhv_get_nested (struct kvm*,int,int) ;
 int kvmhv_put_nested (struct kvm_nested_guest*) ;

__attribute__((used)) static int kvmhv_emulate_priv_tlbie(struct kvm_vcpu *vcpu, unsigned int instr,
        unsigned long rsval, unsigned long rbval)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvm_nested_guest *gp;
 int r, ric, prs, is, ap;
 int lpid;
 long epn;
 int ret = 0;

 ric = get_ric(instr);
 prs = get_prs(instr);
 r = get_r(instr);
 lpid = get_lpid(rsval);
 is = get_is(rbval);
 if ((!r) || (prs) || (ric == 3) || (is == 1) ||
     ((!is) && (ric == 1 || ric == 2)))
  return -EINVAL;

 switch (is) {
 case 0:




  epn = get_epn(rbval);
  ap = get_ap(rbval);
  ret = kvmhv_emulate_tlbie_tlb_addr(vcpu, lpid, ap, epn);
  break;
 case 2:

  gp = kvmhv_get_nested(kvm, lpid, 0);
  if (gp) {
   kvmhv_emulate_tlbie_lpid(vcpu, gp, ric);
   kvmhv_put_nested(gp);
  }
  break;
 case 3:

  kvmhv_emulate_tlbie_all_lpid(vcpu, ric);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
