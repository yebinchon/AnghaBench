
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GFP_KERNEL ;
 int PTRS_PER_PTE ;
 int _PAGE_INVALID ;
 int base_pgt_cache ;
 int * kmem_cache_alloc (int ,int ) ;
 int memset64 (int *,int ,int ) ;

__attribute__((used)) static unsigned long base_pgt_alloc(void)
{
 u64 *table;

 table = kmem_cache_alloc(base_pgt_cache, GFP_KERNEL);
 if (table)
  memset64(table, _PAGE_INVALID, PTRS_PER_PTE);
 return (unsigned long) table;
}
