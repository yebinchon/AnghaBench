#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cache_uri {int size; } ;
typedef  enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;

/* Variables and functions */
 int CACHE_FEATURE_LONG_QUERIES ; 
 int CACHE_URI_BUCKETS ; 
 struct cache_uri* FUNC0 (struct cache_uri*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int cache_features_mask ; 
 int cgsl_order_bottom ; 
 int cgsl_order_top ; 

__attribute__((used)) static void FUNC2 (void (*func)(struct cache_uri *), enum cache_sorted_order order, struct cache_uri *lists) {
  FUNC1 (cache_features_mask & CACHE_FEATURE_LONG_QUERIES);
  int i;
  struct cache_uri *U, *B;
  if (order == cgsl_order_top) {
    for (i = CACHE_URI_BUCKETS - 1; i >= 0; i--) {
      B = &lists[i];
      for (U = FUNC0(B); U != B; U = FUNC0(U)) {
        if (U->size == -1) {
          func (U);
        }
      }
    }
  } else {
    FUNC1 (order == cgsl_order_bottom);
    for (i = 0; i < CACHE_URI_BUCKETS; i++) {
      B = &lists[i];
      for (U = FUNC0(B); U != B; U = FUNC0(U)) {
        if (U->size == -1) {
          func (U);
        }
      }
    }
  }
}