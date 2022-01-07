
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_s390_sie_block {int fac; } ;
struct vsie_page {int fac; TYPE_1__* scb_o; struct kvm_s390_sie_block scb_s; } ;
struct kvm_vcpu {int kvm; } ;
typedef scalar_t__ __u64 ;
typedef int __u32 ;
struct TYPE_2__ {int fac; } ;


 int READ_ONCE (int ) ;
 scalar_t__ read_guest_real (struct kvm_vcpu*,int,int *,int) ;
 int retry_vsie_icpt (struct vsie_page*) ;
 int set_validity_icpt (struct kvm_s390_sie_block*,int) ;
 scalar_t__ test_kvm_facility (int ,int) ;

__attribute__((used)) static int handle_stfle(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
 struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
 __u32 fac = READ_ONCE(vsie_page->scb_o->fac) & 0x7ffffff8U;

 if (fac && test_kvm_facility(vcpu->kvm, 7)) {
  retry_vsie_icpt(vsie_page);
  if (read_guest_real(vcpu, fac, &vsie_page->fac,
        sizeof(vsie_page->fac)))
   return set_validity_icpt(scb_s, 0x1090U);
  scb_s->fac = (__u32)(__u64) &vsie_page->fac;
 }
 return 0;
}
