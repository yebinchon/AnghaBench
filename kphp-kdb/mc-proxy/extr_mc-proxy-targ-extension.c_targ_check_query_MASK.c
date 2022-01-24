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

/* Variables and functions */
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*,int) ; 
 int mct_add ; 
 int mct_get ; 
 int mct_replace ; 
 int mct_set ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int FUNC3 (int type, const char *key, int key_len) {
  if (verbosity) {
    FUNC1 (stderr, "targ_check: type = %d, key = %s, key_len = %d\n", type, key, key_len);
  }
  int l = FUNC0 (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 6 && !FUNC2 (key, "target", 6)) || 
           (key_len >= 6 && !FUNC2 (key, "search", 6)) ||
           (key_len >= 6 && !FUNC2 (key, "prices", 6)) ||
           (key_len >= 11 && !FUNC2 (key, "deletegroup", 11)) ||
           (key_len >= 10 && !FUNC2 (key, "ad_pricing", 10)) ||
           (key_len >= 13 && !FUNC2 (key, "targ_audience", 13)) ||
           (key_len >= 8 && !FUNC2 (key, "audience", 8)) ||
           ((key_len >= 3 && !FUNC2 (key, "ad_", 3)) && !(key_len >= 8 && !FUNC2 (key, "ad_query", 8)) && !(key_len >= 7 && !FUNC2 (key, "ad_info", 7))) ||
           (key_len >= 18 && !FUNC2 (key, "recent_views_stats", 18)) ||
           (key_len >= 17 && !FUNC2 (key, "recent_ad_viewers", 17));
  } else if (type == mct_set || type == mct_replace || type == mct_add) {
    return (key_len >= 4 && !FUNC2 (key, "temp", 4)) || (key_len >= 5 && !FUNC2 (key, "xtemp", 5));
  } else {
    return 1;
  }
}