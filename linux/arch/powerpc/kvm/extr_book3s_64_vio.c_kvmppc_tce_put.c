
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct page {int dummy; } ;
struct kvmppc_spapr_tce_table {struct page** pages; scalar_t__ offset; } ;


 unsigned long TCES_PER_PAGE ;
 struct page* kvm_spapr_get_tce_page (struct kvmppc_spapr_tce_table*,unsigned long) ;
 unsigned long* page_to_virt (struct page*) ;

__attribute__((used)) static void kvmppc_tce_put(struct kvmppc_spapr_tce_table *stt,
  unsigned long idx, unsigned long tce)
{
 struct page *page;
 u64 *tbl;
 unsigned long sttpage;

 idx -= stt->offset;
 sttpage = idx / TCES_PER_PAGE;
 page = stt->pages[sttpage];

 if (!page) {

  if (!tce)
   return;

  page = kvm_spapr_get_tce_page(stt, sttpage);
  if (!page)
   return;
 }
 tbl = page_to_virt(page);

 tbl[idx % TCES_PER_PAGE] = tce;
}
