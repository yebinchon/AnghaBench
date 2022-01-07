
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int BUILD_BUG_ON (int) ;


 int H_16G_CACHE_INDEX ;
 int H_16M_CACHE_INDEX ;
 int PGT_CACHE (int ) ;


 int PUD_CACHE_INDEX ;

 int kmem_cache_free (int ,void*) ;
 int pmd_fragment_free (void*) ;
 int pte_fragment_free (void*,int ) ;

__attribute__((used)) static inline void pgtable_free(void *table, int index)
{
 switch (index) {
 case 129:
  pte_fragment_free(table, 0);
  break;
 case 130:
  pmd_fragment_free(table);
  break;
 case 128:
  kmem_cache_free(PGT_CACHE(PUD_CACHE_INDEX), table);
  break;
 default:
  BUG();
 }
}
