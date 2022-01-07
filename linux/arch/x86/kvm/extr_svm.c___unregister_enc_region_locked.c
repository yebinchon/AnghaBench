
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
struct enc_region {int list; int npages; int pages; } ;


 int kfree (struct enc_region*) ;
 int list_del (int *) ;
 int sev_clflush_pages (int ,int ) ;
 int sev_unpin_memory (struct kvm*,int ,int ) ;

__attribute__((used)) static void __unregister_enc_region_locked(struct kvm *kvm,
        struct enc_region *region)
{






 sev_clflush_pages(region->pages, region->npages);

 sev_unpin_memory(kvm, region->pages, region->npages);
 list_del(&region->list);
 kfree(region);
}
