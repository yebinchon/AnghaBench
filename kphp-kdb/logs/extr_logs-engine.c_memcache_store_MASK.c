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
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int FN ; 
 int /*<<< orphan*/  INIT ; 
 int MAX_QUERY_LEN ; 
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* buf ; 
 int FUNC3 (char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (char const*,long long*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC10 (char*,char*,int*) ; 
 char* stats_buff ; 
 scalar_t__* std_t ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  write_only ; 

int FUNC12 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (verbosity > 1) {
    FUNC5 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d\n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC4 (old_key, old_key_len, &key, &key_len);

    if (!write_only && key_len >= 6 && !FUNC11 (key, "select", 6) && size < MAX_QUERY_LEN) {
      int random_tag;
      if (FUNC10 (key, "select%d", &random_tag) != 1) {
        FUNC1(set, -2);
      }

      if (verbosity > 1) {
        FUNC5 (stderr, "current_text %d\n", random_tag);
      }

      if (FUNC7 (FUNC0(c), size, random_tag) < 0) {
        FUNC5 (stderr, "WARNING: not enough memory for message allocating\n");
        FUNC1(set, -2); // not_enough memory
      }

      char *s = FUNC6 (FUNC0(c));
      FUNC2 (s);
      FUNC9 (&c->In, s, size);
      s[size] = 0;

      FUNC1(set, 1);
    }

    if (key_len >= 9 && !FUNC11 (key, "add_event", 9) && key_len < 1000) {
      const char *s = key + 9;
      int sn = key_len - 9;
      if (s[0] != '(' || s[sn - 1] != ')')  {
        FUNC1(set, -2);
      }
      s++, sn -= 2;
      int i;
      char *ts = stats_buff;

      if (verbosity > 2) {
        FUNC5 (stderr, "%d : %s\n", sn, s);
      }
      for (i = 0; i < sn && s[i] != ','; i++) {
        *ts++ = s[i];
      }
      *ts = 0;

      if (verbosity > 2 && i != sn) {
        FUNC5 (stderr, "key = %s | ts = %s, s = %s\n", key, stats_buff, s + i + 1);
      }

      int params[FN - 2];
      int j;
      for (j = 2; j < FN; j += 1 + std_t[j]) {
        int pos = -1;
        long long x;
        if (FUNC8 (s + i + 1, &x, &pos) < 1 || (i + 1 + pos != sn && s[pos + i + 1] != ',')) {
          FUNC1(set, -2);
        }

        i += pos + 1;
        if (std_t[j]) {
          *(long long *)&params[j - 2] = x;
        } else {
          params[j - 2] = (int)x;
        }
      }

      FUNC9 (&c->In, buf, size);
      buf[size] = 0;

      int result = FUNC3 (stats_buff, params, buf);

      FUNC1(set, result);
    }
  }

  FUNC1(set, -2);
}