
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZPCI_PTE_INVALID ;
 int ZPCI_TABLE_PROTECTED ;
 int entry_clr_protected (unsigned long*) ;
 int entry_set_protected (unsigned long*) ;
 int invalidate_pt_entry (unsigned long*) ;
 int set_pt_pfaa (unsigned long*,void*) ;
 int validate_pt_entry (unsigned long*) ;

void dma_update_cpu_trans(unsigned long *entry, void *page_addr, int flags)
{
 if (flags & ZPCI_PTE_INVALID) {
  invalidate_pt_entry(entry);
 } else {
  set_pt_pfaa(entry, page_addr);
  validate_pt_entry(entry);
 }

 if (flags & ZPCI_TABLE_PROTECTED)
  entry_set_protected(entry);
 else
  entry_clr_protected(entry);
}
