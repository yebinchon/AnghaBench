
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int apic_access_page_done; } ;
struct kvm {int slots_lock; TYPE_1__ arch; } ;


 int APIC_ACCESS_PAGE_PRIVATE_MEMSLOT ;
 int APIC_DEFAULT_PHYS_BASE ;
 int EFAULT ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __x86_set_memory_region (struct kvm*,int ,int,int ) ;
 struct page* gfn_to_page (struct kvm*,int) ;
 scalar_t__ is_error_page (struct page*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_page (struct page*) ;

__attribute__((used)) static int alloc_apic_access_page(struct kvm *kvm)
{
 struct page *page;
 int r = 0;

 mutex_lock(&kvm->slots_lock);
 if (kvm->arch.apic_access_page_done)
  goto out;
 r = __x86_set_memory_region(kvm, APIC_ACCESS_PAGE_PRIVATE_MEMSLOT,
        APIC_DEFAULT_PHYS_BASE, PAGE_SIZE);
 if (r)
  goto out;

 page = gfn_to_page(kvm, APIC_DEFAULT_PHYS_BASE >> PAGE_SHIFT);
 if (is_error_page(page)) {
  r = -EFAULT;
  goto out;
 }





 put_page(page);
 kvm->arch.apic_access_page_done = 1;
out:
 mutex_unlock(&kvm->slots_lock);
 return r;
}
