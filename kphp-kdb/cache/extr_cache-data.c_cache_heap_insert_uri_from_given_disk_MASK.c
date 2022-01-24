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
struct amortization_counter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MAX_LOCAL_COPIES ; 
 scalar_t__ LC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct amortization_counter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cache_uri*) ; 
 int FUNC2 (struct cache_uri*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disk_filter ; 
 size_t heap_acounter_off ; 
 int /*<<< orphan*/  heap_foreach ; 
 int /*<<< orphan*/  tbl_foreach ; 
 int uri_off ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (struct cache_uri *U) {
  FUNC4 (4, "cache_heap_insert_uri_from_given_disk (%s)\n", U->data + uri_off);
  int i;
  const int n = FUNC2 (U, LC, CACHE_MAX_LOCAL_COPIES, 0, NULL);
  if (n < 0) {
    return;
  }
  for (i = 0; i < n; i++) {
    if (FUNC3 (LC + i, &disk_filter)) {
      struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
      FUNC0 (tbl_foreach, C);
      FUNC1 (heap_foreach, U);
      return;
    }
  }
}