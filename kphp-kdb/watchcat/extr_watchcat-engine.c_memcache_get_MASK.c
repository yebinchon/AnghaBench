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
 scalar_t__ MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  get ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int my_verbosity_tmp ; 
 int FUNC4 (struct connection*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,char*,char*,int) ; 
 int FUNC6 (char*,char*,long long*,int*,int*,int*) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (long long,char*,int,int) ; 
 int FUNC9 () ; 

int FUNC10 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (my_verbosity_tmp > 1) {
    FUNC2 (stderr, "memcache_get: key='%s'\n", old_key);
  }

  char *key;
  int key_len;

  FUNC1 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !FUNC7 (key, "stats", 5)) {
    int len = FUNC9 ();
    int len2 = FUNC4 (c, stats_buff + len, MAX_VALUE_LEN - len);
    FUNC5 (c, key, stats_buff, len + len2 - 1);

    return 0;
  }

  if (key_len >= 15 && !FUNC7 (key, "create_watchcat", 15) ) {
    int len;
    long long id;
    int timeout, q_id;

    if (FUNC6 (key + 15, "%lld,%d,%d%n", &id, &timeout, &q_id, &len) == 3 && key[len += 15] == '(' && key[key_len - 1] == ')') {
      char *s = stats_buff;
      int n = key_len - len - 2;
      FUNC3 (s, key + len + 1, n);
      s[n] = 0;

      FUNC8 (id, s, q_id, timeout);
    }
  }

  FUNC0(get, 0);
}