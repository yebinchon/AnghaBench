
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct cache_ref_iterator {char* levels; scalar_t__ prefix; } ;


 int ITER_DONE ;
 int base_ref_iterator_free (struct ref_iterator*) ;
 int free (char*) ;

__attribute__((used)) static int cache_ref_iterator_abort(struct ref_iterator *ref_iterator)
{
 struct cache_ref_iterator *iter =
  (struct cache_ref_iterator *)ref_iterator;

 free((char *)iter->prefix);
 free(iter->levels);
 base_ref_iterator_free(ref_iterator);
 return ITER_DONE;
}
