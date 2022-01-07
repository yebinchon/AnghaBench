
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* dma_alloc_page_table () ;
 int entry_clr_protected (unsigned long*) ;
 unsigned long* get_st_pto (unsigned long) ;
 scalar_t__ reg_entry_isvalid (unsigned long) ;
 int set_st_pto (unsigned long*,unsigned long*) ;
 int validate_st_entry (unsigned long*) ;

__attribute__((used)) static unsigned long *dma_get_page_table_origin(unsigned long *entry)
{
 unsigned long *pto;

 if (reg_entry_isvalid(*entry))
  pto = get_st_pto(*entry);
 else {
  pto = dma_alloc_page_table();
  if (!pto)
   return ((void*)0);
  set_st_pto(entry, pto);
  validate_st_entry(entry);
  entry_clr_protected(entry);
 }
 return pto;
}
