
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int size; } ;
typedef enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;


 int CACHE_FEATURE_LONG_QUERIES ;
 int CACHE_URI_BUCKETS ;
 struct cache_uri* PNEXT (struct cache_uri*) ;
 int assert (int) ;
 int cache_features_mask ;
 int cgsl_order_bottom ;
 int cgsl_order_top ;

__attribute__((used)) static void cache_uri_lists_nosize_foreach (void (*func)(struct cache_uri *), enum cache_sorted_order order, struct cache_uri *lists) {
  assert (cache_features_mask & CACHE_FEATURE_LONG_QUERIES);
  int i;
  struct cache_uri *U, *B;
  if (order == cgsl_order_top) {
    for (i = CACHE_URI_BUCKETS - 1; i >= 0; i--) {
      B = &lists[i];
      for (U = PNEXT(B); U != B; U = PNEXT(U)) {
        if (U->size == -1) {
          func (U);
        }
      }
    }
  } else {
    assert (order == cgsl_order_bottom);
    for (i = 0; i < CACHE_URI_BUCKETS; i++) {
      B = &lists[i];
      for (U = PNEXT(B); U != B; U = PNEXT(U)) {
        if (U->size == -1) {
          func (U);
        }
      }
    }
  }
}
