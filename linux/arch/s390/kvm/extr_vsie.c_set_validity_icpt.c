
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_s390_sie_block {int ipa; int ipb; int icptcode; } ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;


 int ICPT_VALIDITY ;

__attribute__((used)) static int set_validity_icpt(struct kvm_s390_sie_block *scb,
        __u16 reason_code)
{
 scb->ipa = 0x1000;
 scb->ipb = ((__u32) reason_code) << 16;
 scb->icptcode = ICPT_VALIDITY;
 return 1;
}
