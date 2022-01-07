
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvmppc_spapr_tce_table {int alloc_lock; struct page** pages; } ;


 int GFP_KERNEL ;
 int WARN_ON_ONCE (int) ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct page *kvm_spapr_get_tce_page(struct kvmppc_spapr_tce_table *stt,
  unsigned long sttpage)
{
 struct page *page = stt->pages[sttpage];

 if (page)
  return page;

 mutex_lock(&stt->alloc_lock);
 page = stt->pages[sttpage];
 if (!page) {
  page = alloc_page(GFP_KERNEL | __GFP_ZERO);
  WARN_ON_ONCE(!page);
  if (page)
   stt->pages[sttpage] = page;
 }
 mutex_unlock(&stt->alloc_lock);

 return page;
}
