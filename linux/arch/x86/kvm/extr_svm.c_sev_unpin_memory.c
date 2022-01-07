
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct kvm_sev_info {unsigned long pages_locked; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int kvfree (struct page**) ;
 int release_pages (struct page**,unsigned long) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static void sev_unpin_memory(struct kvm *kvm, struct page **pages,
        unsigned long npages)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;

 release_pages(pages, npages);
 kvfree(pages);
 sev->pages_locked -= npages;
}
