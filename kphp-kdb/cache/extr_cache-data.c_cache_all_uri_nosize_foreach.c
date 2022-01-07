
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;


 int assert (int) ;
 int cache_all_uri_cached_nosize_foreach (void (*) (struct cache_uri*),int) ;
 int cache_all_uri_uncached_nosize_foreach (void (*) (struct cache_uri*),int) ;
 int cgsl_order_bottom ;
 int cgsl_order_top ;

void cache_all_uri_nosize_foreach (void (*func)(struct cache_uri *), enum cache_sorted_order order) {
  if (order == cgsl_order_top) {
    cache_all_uri_cached_nosize_foreach (func, order);
    cache_all_uri_uncached_nosize_foreach (func, order);
  } else {
    assert (order == cgsl_order_bottom);
    cache_all_uri_uncached_nosize_foreach (func, order);
    cache_all_uri_cached_nosize_foreach (func, order);
  }
}
