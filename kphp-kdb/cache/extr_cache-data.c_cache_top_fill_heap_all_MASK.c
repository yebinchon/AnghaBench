#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache_uri {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ max_size; } ;

/* Variables and functions */
 int CACHE_FEATURE_FAST_BOTTOM_ACCESS ; 
 int CACHE_FEATURE_LONG_QUERIES ; 
 int CACHE_URI_BUCKETS ; 
 int FUNC0 (int) ; 
 struct cache_uri* FUNC1 (struct cache_uri*) ; 
 scalar_t__ acounter_uncached_bucket_id ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int cache_features_mask ; 
 int /*<<< orphan*/  FUNC3 (struct cache_uri*) ; 
 scalar_t__ heap_acounter_id ; 
 TYPE_1__* heap_foreach ; 
 struct cache_uri* list_cached ; 
 struct cache_uri* list_uncached ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5 (int min_rate) {
  if (min_rate >= 1000000) {
    min_rate = min_rate / 1000000 - 0;
  }
  if (min_rate >= CACHE_URI_BUCKETS) {
    min_rate = CACHE_URI_BUCKETS - 1; /* special bucket for counters in [CACHE_URI_BUCKETS - 1, +inf) */
  }

  FUNC2 (cache_features_mask & CACHE_FEATURE_LONG_QUERIES);
  int i;
  struct cache_uri *U, *B;
  for (i = CACHE_URI_BUCKETS - 1; i >= min_rate; i--) {
    B = &list_cached[i];
    for (U = FUNC1(B); U != B; U = FUNC1(U)) {
      FUNC3 (U);
    }
    B = &list_uncached[i];
    for (U = FUNC1(B); U != B; U = FUNC1(U)) {
      FUNC3 (U);
    }
    if (heap_acounter_id <= acounter_uncached_bucket_id && heap_foreach->size == heap_foreach->max_size && FUNC0(1) > i) {
      FUNC4 (2, "Skipping buckets from %d to 0.\n", i - 1);
      break;
    }
  }

  if (cache_features_mask & CACHE_FEATURE_FAST_BOTTOM_ACCESS) {
    while (i >= 0) {
      B = &list_cached[i];
      for (U = FUNC1(B); U != B; U = FUNC1(U)) {
        FUNC3 (U);
      }
      i--;
    }
  }
}