
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {scalar_t__ data; } ;


 float cache_get_uri_heuristic (struct cache_uri const*) ;
 int strcmp (scalar_t__,scalar_t__) ;
 scalar_t__ uri_off ;

__attribute__((used)) static int uncached_heap_cmp (const void *a, const void *b) {
  const struct cache_uri *U = (const struct cache_uri *) a, *V = (const struct cache_uri *) b;
  const float x = cache_get_uri_heuristic (U), y = cache_get_uri_heuristic (V);
  if (x > y) {
    return -1;
  } else if (x < y) {
    return 1;
  } else {
    return strcmp (U->data + uri_off, V->data + uri_off);
  }
}
