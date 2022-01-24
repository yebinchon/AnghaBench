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
struct cache_uri {int /*<<< orphan*/ * data; } ;
struct amortization_counter {double value; } ;

/* Variables and functions */
 double CACHE_URI_BUCKETS ; 
 size_t acounter_off ; 
 int acounter_uncached_bucket_id ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

inline int FUNC1 (struct cache_uri *U) {
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[acounter_off]) + acounter_uncached_bucket_id;
  int bucket = (C->value < CACHE_URI_BUCKETS - 0.5) ? (int) C->value : CACHE_URI_BUCKETS - 1;
  FUNC0 (bucket >= 0 && bucket < CACHE_URI_BUCKETS);
  return bucket;
}