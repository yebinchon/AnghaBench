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
struct cache_uri {int dummy; } ;
struct cache_local_copy {int flags; int /*<<< orphan*/  packed_location; } ;

/* Variables and functions */
 int CACHE_FEATURE_FAST_BOTTOM_ACCESS ; 
 int CACHE_FEATURE_LONG_QUERIES ; 
 int CACHE_LOCAL_COPY_FLAG_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const cache_features_mask ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct cache_uri*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ list_cached ; 

__attribute__((used)) static void FUNC3 (struct cache_uri *U, struct cache_local_copy *L, int n) {
  const int mask = (CACHE_FEATURE_LONG_QUERIES | CACHE_FEATURE_FAST_BOTTOM_ACCESS);
  FUNC0 ((cache_features_mask & mask) == mask);
  int bucket = 0;
  if (n == 1 && (L[0].flags & CACHE_LOCAL_COPY_FLAG_INT)) {
    bucket = FUNC2 (L[0].packed_location);
  }
  FUNC1 (list_cached + bucket, U);
}