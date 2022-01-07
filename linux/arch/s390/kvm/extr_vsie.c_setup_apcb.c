
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_s390_crypto_cb {int apcb0; int apcb1; } ;





 int EACCES ;
 int EINVAL ;
 int const PAGE_MASK ;
 int setup_apcb00 (struct kvm_vcpu*,unsigned long*,unsigned long,unsigned long*) ;
 int setup_apcb10 (struct kvm_vcpu*,int *,unsigned long,int *) ;
 int setup_apcb11 (struct kvm_vcpu*,unsigned long*,unsigned long,unsigned long*) ;

__attribute__((used)) static int setup_apcb(struct kvm_vcpu *vcpu, struct kvm_s390_crypto_cb *crycb_s,
        const u32 crycb_o,
        struct kvm_s390_crypto_cb *crycb_h,
        int fmt_o, int fmt_h)
{
 struct kvm_s390_crypto_cb *crycb;

 crycb = (struct kvm_s390_crypto_cb *) (unsigned long)crycb_o;

 switch (fmt_o) {
 case 128:
  if ((crycb_o & PAGE_MASK) != ((crycb_o + 256) & PAGE_MASK))
   return -EACCES;
  if (fmt_h != 128)
   return -EINVAL;
  return setup_apcb11(vcpu, (unsigned long *)&crycb_s->apcb1,
        (unsigned long) &crycb->apcb1,
        (unsigned long *)&crycb_h->apcb1);
 case 129:
  switch (fmt_h) {
  case 128:
   return setup_apcb10(vcpu, &crycb_s->apcb1,
         (unsigned long) &crycb->apcb0,
         &crycb_h->apcb1);
  case 129:
   return setup_apcb00(vcpu,
         (unsigned long *) &crycb_s->apcb0,
         (unsigned long) &crycb->apcb0,
         (unsigned long *) &crycb_h->apcb0);
  }
  break;
 case 130:
  if ((crycb_o & PAGE_MASK) != ((crycb_o + 32) & PAGE_MASK))
   return -EACCES;

  switch (fmt_h) {
  case 128:
   return setup_apcb10(vcpu, &crycb_s->apcb1,
         (unsigned long) &crycb->apcb0,
         &crycb_h->apcb1);
  case 129:
  case 130:
   return setup_apcb00(vcpu,
         (unsigned long *) &crycb_s->apcb0,
         (unsigned long) &crycb->apcb0,
         (unsigned long *) &crycb_h->apcb0);
  }
 }
 return -EINVAL;
}
