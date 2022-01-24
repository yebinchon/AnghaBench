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
typedef  union cache_packed_local_copy_location {int dummy; } cache_packed_local_copy_location ;
struct cache_uri {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MAX_LOCAL_COPIES ; 
 scalar_t__ LC ; 
 int FUNC0 (scalar_t__,union cache_packed_local_copy_location*) ; 
 int FUNC1 (struct cache_uri*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2 (struct cache_uri *U) {
  int i, n = FUNC1 (U, LC, CACHE_MAX_LOCAL_COPIES, 0, NULL);
  if (n < 0) {
    return -1;
  }
  for (i = 0; i < n; i++) {
    union cache_packed_local_copy_location u;
    if (FUNC0 (LC + i, &u) == 1) {
      return 1;
    }
  }
  return 0;
}