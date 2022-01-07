
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union vaddress {unsigned long addr; unsigned long px; } ;
union page_table_entry {unsigned long val; int p; scalar_t__ z; scalar_t__ i; } ;
struct kvm_vcpu {int dummy; } ;
struct gmap {TYPE_1__* mm; int parent; } ;
struct TYPE_2__ {int mmap_sem; } ;


 unsigned long PAGE_SIZE ;
 int PGM_PAGE_TRANSLATION ;
 int PGM_TRANSLATION_SPEC ;
 int __pte (unsigned long) ;
 int down_read (int *) ;
 int gmap_read_table (int ,unsigned long,unsigned long*) ;
 int gmap_shadow_page (struct gmap*,unsigned long,int ) ;
 int gmap_shadow_pgt_lookup (struct gmap*,unsigned long,unsigned long*,int*,int*) ;
 int ipte_lock (struct kvm_vcpu*) ;
 int ipte_unlock (struct kvm_vcpu*) ;
 int kvm_s390_shadow_tables (struct gmap*,unsigned long,unsigned long*,int*,int*) ;
 int up_read (int *) ;

int kvm_s390_shadow_fault(struct kvm_vcpu *vcpu, struct gmap *sg,
     unsigned long saddr)
{
 union vaddress vaddr;
 union page_table_entry pte;
 unsigned long pgt;
 int dat_protection, fake;
 int rc;

 down_read(&sg->mm->mmap_sem);





 ipte_lock(vcpu);

 rc = gmap_shadow_pgt_lookup(sg, saddr, &pgt, &dat_protection, &fake);
 if (rc)
  rc = kvm_s390_shadow_tables(sg, saddr, &pgt, &dat_protection,
         &fake);

 vaddr.addr = saddr;
 if (fake) {
  pte.val = pgt + vaddr.px * PAGE_SIZE;
  goto shadow_page;
 }
 if (!rc)
  rc = gmap_read_table(sg->parent, pgt + vaddr.px * 8, &pte.val);
 if (!rc && pte.i)
  rc = PGM_PAGE_TRANSLATION;
 if (!rc && pte.z)
  rc = PGM_TRANSLATION_SPEC;
shadow_page:
 pte.p |= dat_protection;
 if (!rc)
  rc = gmap_shadow_page(sg, saddr, __pte(pte.val));
 ipte_unlock(vcpu);
 up_read(&sg->mm->mmap_sem);
 return rc;
}
