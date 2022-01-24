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
 int /*<<< orphan*/  MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ STATS_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 char* buf ; 
 double cmd_time ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  get ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 double FUNC11 () ; 
 int FUNC12 (struct connection*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct connection*,char const*,char*,int) ; 
 int FUNC14 (char*,char*,int*) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int verbosity ; 

int FUNC17 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    FUNC4 (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  FUNC3 (old_key, old_key_len, &key, &key_len);

  int mode = 0, st = 0;

  if (key_len >= 5 && !FUNC16 (key, "hints", 5)) {
    mode = 1;
    st = 5;
  }

#ifdef TYPES
  if (key_len >= 5 && !strncmp (key, "types", 5)) {
    mode = 2;
    st = 5;
  }

  if (key_len >= 11 && !strncmp (key, "hints_debug", 11)) {
    mode = 3;
    st = 11;
  }
#endif

  if (mode) {
    if (key[st] != '(' || key[key_len - 1] != ')') {
      FUNC0(get, 0);
    }
    int len = key_len - st - 2;
    FUNC10 (buf, key + st + 1, sizeof (char) * len);
    buf[len] = 0;

    if (verbosity >= 2) {
      FUNC4 (stderr, "run get_hints (%s, %d)\n", buf, mode);
    }

    FUNC6 (buf, mode, MAX_VALUE_LEN);

    FUNC13 (c, old_key, buf, FUNC15 (buf));

    if (verbosity > 0) {
      if (FUNC11() + cmd_time > 0.005) {
        FUNC4 (stderr, "Warning!!! Search query (%s) was %lf seconds.\n", key, FUNC11() + cmd_time);
      }
    }

    FUNC0(get, 0);
  }

  if (key_len >= 10 && !FUNC16 (key, "suggestion", 10)) {
    if (key[10] != '(' || key[key_len - 1] != ')') {
      FUNC0(get, 0);
    }

    int len = key_len - 12;
    FUNC10 (buf, key + 11, sizeof (char) * len);
    buf[len] = 0;

    if (verbosity >= 2) {
      FUNC4 (stderr, "run get_suggestion (%s)\n", buf);
    }

    FUNC7 (buf, MAX_VALUE_LEN);

    FUNC13 (c, old_key, buf, FUNC15 (buf));

    if (verbosity > 0) {
      if (FUNC11() + cmd_time > 0.005) {
        FUNC4 (stderr, "Warning!!! Search query (%s) was %lf seconds.\n", key, FUNC11() + cmd_time);
      }
    }

    FUNC0(get, 0);
  }

  if (key_len >= 5 && !FUNC16 (key, "stats", 5)) {
    int len = FUNC9 ();
    int len2 = FUNC12 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC13 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  if (key_len >= 3 && !FUNC16 (key, "top", 3)) {
    int cnt;
    if (FUNC14 (key, "top%d", &cnt) == 1) {
      FUNC8 (buf, cnt, MAX_VALUE_LEN);

      FUNC13 (c, old_key, buf, FUNC15 (buf));
    }
    FUNC0(get, 0);
  }

  if (key_len >= 4 && !FUNC16 (key, "best", 4)) {
    int cnt;
    if (FUNC14 (key, "best%d", &cnt) == 1) {
      FUNC5 (buf, cnt, MAX_VALUE_LEN);

      FUNC13 (c, old_key, buf, FUNC15 (buf));
    }
    FUNC0(get, 0);
  }

  if (key_len >= 10 && !FUNC16 (key, "black_list", 10)) {
    if (key_len >= 16 && !FUNC16 (key, "black_list_force", 16)) {
      FUNC1();
    } else {
      char *s = FUNC2();
      int len = FUNC15 (s);

      FUNC13 (c, old_key, s, len);
    }

    FUNC0(get, 0);
  }

  FUNC0(get, 0);
}