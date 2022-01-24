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

int FUNC3 (int type, const char *key, int key_len) {
  if (verbosity) {
    FUNC1 (stderr, "news_ug_check: type = %d, key = %s, key_len = %d\n", type, key, key_len);
  }
  int l = FUNC0 (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 12 && (!FUNC2 (key, "raw_updates", 11) || !FUNC2 (key, "%raw_updates", 12))) ||
           (key_len >=  8 && (!FUNC2 (key, "updates", 7) || !FUNC2 (key, "%updates", 8)));
  } else if (type == mct_set || type == mct_replace || type == mct_add) {
    return (key_len >= 8 && !FUNC2 (key, "userlist", 8));
  } else {
    return 1;
  }
}