
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_set_size_short {int size; scalar_t__ data; } ;
struct cache_uri {int dummy; } ;
typedef int md5_t ;


 int assert (struct cache_uri*) ;
 struct cache_uri* cache_get_uri_by_md5 (int *,int) ;
 struct cache_uri* cache_set_size (struct cache_uri*,int ) ;

void cache_set_size_short (struct lev_cache_set_size_short *E) {
  struct cache_uri *U = cache_get_uri_by_md5 ((md5_t *) E->data, 8);
  assert (U);
  U = cache_set_size (U, E->size);
}
