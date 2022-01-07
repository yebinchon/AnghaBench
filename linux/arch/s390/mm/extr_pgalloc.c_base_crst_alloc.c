
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRST_ALLOC_ORDER ;
 int GFP_KERNEL ;
 unsigned long __get_free_pages (int ,int ) ;
 int crst_table_init (unsigned long*,unsigned long) ;

__attribute__((used)) static unsigned long base_crst_alloc(unsigned long val)
{
 unsigned long table;

 table = __get_free_pages(GFP_KERNEL, CRST_ALLOC_ORDER);
 if (table)
  crst_table_init((unsigned long *)table, val);
 return table;
}
