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
struct lev_cache_uri {int /*<<< orphan*/  data; } ;
struct cache_uri {scalar_t__ last_access; } ;

/* Variables and functions */
 int CACHE_FEATURE_REPLAY_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int cache_features_mask ; 
 int /*<<< orphan*/  FUNC1 (struct cache_uri*) ; 
 struct cache_uri* FUNC2 (char*,int) ; 
 scalar_t__ log_last_ts ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ uri_living_time ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,...) ; 

__attribute__((used)) static void FUNC5 (struct lev_cache_uri *E, int l) {
  FUNC0 (log_last_ts > 0);
  if (cache_features_mask & CACHE_FEATURE_REPLAY_DELETE) {
    char uri[256];
    FUNC3 (uri, E->data, l);
    uri[l] = 0;
    struct cache_uri *U = FUNC2 (uri, 0);
    if (U == NULL) {
      FUNC4 (2, "Delete not existing global uri - \"%s\".\n", uri);
      return;
    }
    if (U->last_access >= log_last_ts - uri_living_time + 7200) {
      FUNC4 (2, "Skip deleting global uri, since it isn't too old - \"%s\", log_last_ts: %d, last_access: %d\n", uri, log_last_ts, U->last_access);
      return;
    }
    FUNC0 (U == FUNC2 (uri, -1));
    FUNC1 (U);
  }
}