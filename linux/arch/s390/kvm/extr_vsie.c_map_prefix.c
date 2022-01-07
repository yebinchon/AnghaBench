
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_s390_sie_block {int prefix; int mso; int ecb; } ;
struct vsie_page {int gmap; struct kvm_s390_sie_block scb_s; } ;
struct kvm_vcpu {int dummy; } ;


 int ECB_TE ;
 int EFAULT ;
 int GUEST_PREFIX_SHIFT ;
 int PAGE_SIZE ;
 int kvm_s390_shadow_fault (struct kvm_vcpu*,int ,int) ;
 scalar_t__ prefix_is_mapped (struct vsie_page*) ;
 int prefix_mapped (struct vsie_page*) ;
 int prefix_unmapped (struct vsie_page*) ;
 int set_validity_icpt (struct kvm_s390_sie_block*,int) ;

__attribute__((used)) static int map_prefix(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
 struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
 u64 prefix = scb_s->prefix << GUEST_PREFIX_SHIFT;
 int rc;

 if (prefix_is_mapped(vsie_page))
  return 0;


 prefix_mapped(vsie_page);


 prefix += scb_s->mso;

 rc = kvm_s390_shadow_fault(vcpu, vsie_page->gmap, prefix);
 if (!rc && (scb_s->ecb & ECB_TE))
  rc = kvm_s390_shadow_fault(vcpu, vsie_page->gmap,
        prefix + PAGE_SIZE);




 if (rc)
  prefix_unmapped(vsie_page);
 if (rc > 0 || rc == -EFAULT)
  rc = set_validity_icpt(scb_s, 0x0037U);
 return rc;
}
