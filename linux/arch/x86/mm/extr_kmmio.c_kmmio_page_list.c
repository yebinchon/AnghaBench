
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef int pte_t ;


 int KMMIO_PAGE_HASH_BITS ;
 size_t hash_long (unsigned long,int ) ;
 struct list_head* kmmio_page_table ;
 int * lookup_address (unsigned long,unsigned int*) ;
 unsigned long page_level_mask (unsigned int) ;

__attribute__((used)) static struct list_head *kmmio_page_list(unsigned long addr)
{
 unsigned int l;
 pte_t *pte = lookup_address(addr, &l);

 if (!pte)
  return ((void*)0);
 addr &= page_level_mask(l);

 return &kmmio_page_table[hash_long(addr, KMMIO_PAGE_HASH_BITS)];
}
