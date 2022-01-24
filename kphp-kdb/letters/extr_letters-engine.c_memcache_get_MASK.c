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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT ; 
 int MAX_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STATS_BUFF_SIZE ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  get ; 
 char* FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 (struct connection*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,char const*,char*,int,int) ; 
 int FUNC10 (char*,char*,int*,...) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int verbosity ; 

int FUNC13 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    FUNC3 (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  FUNC2 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC12 (key, "stats", 5)) {
    int len = FUNC6();
    int len2 = FUNC7 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC8 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  if (key_len >= 7 && !FUNC12 (key, "letters", 7)) {
    int min_priority, max_priority, cnt, immediate_delete = 0, add = 7;
    if (!FUNC12 (key + add, "_immediate", 10)) {
      add += 10;
      immediate_delete = 1;
    }

    if (FUNC10 (key + add, "%*d,%d,%d#%d", &min_priority, &max_priority, &cnt) != 3 || min_priority <= 0 || max_priority >= MAX_PRIORITY || min_priority > max_priority) {
      FUNC0(get, 0);
    }

    char *res = FUNC4 (min_priority, max_priority, cnt, immediate_delete);

    FUNC9 (c, old_key, res, FUNC11 (res), 1);

    FUNC0(get, 0);
  }

  if (key_len >= 11 && !FUNC12 (key, "clear_queue", 11)) {
    int priority;
    if (FUNC10 (key + 11, "%d", &priority) < 1 || priority < 0 || priority >= MAX_PRIORITY) {
      FUNC0(get, 0);
    }

    char *ret = FUNC1 ("%lld", FUNC5 (priority));
    FUNC8 (c, old_key, ret, FUNC11 (ret));

    FUNC0(get, 0);
  }

  FUNC0(get, 0);
}