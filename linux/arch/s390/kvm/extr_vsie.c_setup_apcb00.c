
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_s390_apcb0 {int dummy; } ;


 int EFAULT ;
 int bitmap_and (unsigned long*,unsigned long*,unsigned long*,int) ;
 scalar_t__ read_guest_real (struct kvm_vcpu*,unsigned long,unsigned long*,int) ;

__attribute__((used)) static int setup_apcb00(struct kvm_vcpu *vcpu, unsigned long *apcb_s,
   unsigned long apcb_o, unsigned long *apcb_h)
{
 if (read_guest_real(vcpu, apcb_o, apcb_s,
       sizeof(struct kvm_s390_apcb0)))
  return -EFAULT;

 bitmap_and(apcb_s, apcb_s, apcb_h, sizeof(struct kvm_s390_apcb0));

 return 0;
}
