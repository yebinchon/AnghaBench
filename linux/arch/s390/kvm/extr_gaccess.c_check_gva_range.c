
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;
typedef enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;


 unsigned long PAGE_SIZE ;
 int guest_translate_address (struct kvm_vcpu*,unsigned long,int ,unsigned long*,int) ;
 int ipte_lock (struct kvm_vcpu*) ;
 int ipte_unlock (struct kvm_vcpu*) ;
 unsigned long min (unsigned long,unsigned long) ;

int check_gva_range(struct kvm_vcpu *vcpu, unsigned long gva, u8 ar,
      unsigned long length, enum gacc_mode mode)
{
 unsigned long gpa;
 unsigned long currlen;
 int rc = 0;

 ipte_lock(vcpu);
 while (length > 0 && !rc) {
  currlen = min(length, PAGE_SIZE - (gva % PAGE_SIZE));
  rc = guest_translate_address(vcpu, gva, ar, &gpa, mode);
  gva += currlen;
  length -= currlen;
 }
 ipte_unlock(vcpu);

 return rc;
}
