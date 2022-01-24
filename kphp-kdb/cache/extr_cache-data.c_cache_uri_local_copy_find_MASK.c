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
struct cache_local_copy {int dummy; } ;
typedef  int /*<<< orphan*/  cache_disk_filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MAX_LOCAL_COPIES ; 
 struct cache_local_copy* LC ; 
 int FUNC0 (struct cache_uri*,struct cache_local_copy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cache_local_copy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disk_filter ; 

struct cache_local_copy *FUNC2 (struct cache_uri *U, cache_disk_filter_t *F) {
  const int n = FUNC0 (U, LC, CACHE_MAX_LOCAL_COPIES, 1, NULL);
  int i;
  for (i = 0; i < n; i++) {
    if (FUNC1 (LC + i, &disk_filter)) {
      return LC + i;
    }
  }
  return NULL;
}