
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_pgt_cache ;
 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static void base_pgt_free(unsigned long table)
{
 kmem_cache_free(base_pgt_cache, (void *) table);
}
