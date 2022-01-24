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
struct lev_cache_access_long {scalar_t__ data; } ;
struct cache_uri {int /*<<< orphan*/  last_access; } ;
typedef  int /*<<< orphan*/  md5_t ;

/* Variables and functions */
 int CACHE_FEATURE_ACCESS_QUERIES ; 
 int /*<<< orphan*/  access_long_logevents ; 
 int /*<<< orphan*/  FUNC0 (struct cache_uri*) ; 
 int cache_features_mask ; 
 struct cache_uri* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_uri*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  log_last_ts ; 
 int /*<<< orphan*/  skipped_access_logevents ; 
 int verbosity ; 

__attribute__((used)) static int FUNC4 (struct lev_cache_access_long *E, int t) {
  if (!(cache_features_mask & CACHE_FEATURE_ACCESS_QUERIES)) {
    return -1;
  }
  struct cache_uri *U = FUNC1 ((md5_t *) E->data, 16);
  if (U == NULL) {
    if (verbosity >= 1) {
      FUNC3 ("wrong cache_access_long: ", (md5_t *) E->data, 16);
    }
    skipped_access_logevents++;
    return -1;
  }
  U->last_access = log_last_ts;
  FUNC2 (U, t);
  access_long_logevents++;
  FUNC0 (U);
  return 0;
}