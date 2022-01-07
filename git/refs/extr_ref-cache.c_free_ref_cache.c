
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_cache {int root; } ;


 int free (struct ref_cache*) ;
 int free_ref_entry (int ) ;

void free_ref_cache(struct ref_cache *cache)
{
 free_ref_entry(cache->root);
 free(cache);
}
