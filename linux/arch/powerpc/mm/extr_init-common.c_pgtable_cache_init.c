
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PGD_INDEX_SIZE ;
 scalar_t__ PMD_CACHE_INDEX ;
 scalar_t__ PUD_CACHE_INDEX ;
 int pgtable_cache_add (scalar_t__) ;

void pgtable_cache_init(void)
{
 pgtable_cache_add(PGD_INDEX_SIZE);

 if (PMD_CACHE_INDEX)
  pgtable_cache_add(PMD_CACHE_INDEX);





 if (PUD_CACHE_INDEX)
  pgtable_cache_add(PUD_CACHE_INDEX);
}
