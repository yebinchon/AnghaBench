
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;


 int cache_uri_lists_nosize_foreach (void (*) (struct cache_uri*),int,int ) ;
 int list_uncached ;

__attribute__((used)) static void cache_all_uri_uncached_nosize_foreach (void (*func)(struct cache_uri *), enum cache_sorted_order order) {
  cache_uri_lists_nosize_foreach (func, order, list_uncached);
}
