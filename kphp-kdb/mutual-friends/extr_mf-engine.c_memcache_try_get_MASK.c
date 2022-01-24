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
 int MAX_CNT ; 
 int MAX_FRIENDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int STATS_BUFF_SIZE ; 
 int active_aio_queries ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* buf ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int* fr_buff ; 
 int /*<<< orphan*/  get ; 
 int FUNC6 (int,int,int,int*) ; 
 int FUNC7 () ; 
 int FUNC8 (struct connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,...) ; 
 int FUNC11 (char*,char*,int*,...) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int verbosity ; 

int FUNC13 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    FUNC5 (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  FUNC4 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 11 && !FUNC12 (key, "unload_user", 11)) {
    int uid;

    FUNC11 (key, "unload_user%d", &uid);
//    test_user_unload (uid);

    FUNC9 (c, old_key, "0", 1);

    FUNC0(get, 0);
  }

  if (key_len >= 10 && !FUNC12 (key, "unload_lru", 10)) {
//    user_LRU_unload();
    FUNC9 (c, old_key, "0", 1);

    FUNC0(get, 0);
  }


  if (key_len >= 5 && !FUNC12 (key, "stats", 5)) {
    int len = FUNC7 ();
    int len2 = FUNC8 (c, stats_buff + len, STATS_BUFF_SIZE - len);
    FUNC1 (len + len2 + 1 < STATS_BUFF_SIZE);
    FUNC9 (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }


  if (key_len >= 9 && !FUNC12 (key, "exception", 9)) {
    int id, fid;
    if (FUNC11 (key, "exception%d_%d", &id, &fid) == 2) {
       FUNC2 (id, fid);
    }
    FUNC9 (c, old_key, "0", 1);

    FUNC0(get, 0);
  }

  if (key_len >= 16 && !FUNC12 (key, "clear_exceptions", 16)) {
    int id;
    if (FUNC11 (key, "clear_exceptions%d", &id) == 1) {
       int res = FUNC3 (id);
       if (res < 0) {
         FUNC0(get, res);
       }
    }
    FUNC9 (c, old_key, "0", 1);

    FUNC0(get, 0);
  }

  if (key_len >= 11 && !FUNC12 (key, "suggestions", 11)) {
    int uid, cnt, pos, min_common;
    int t = FUNC11 (key + 11, "%d#%d%n", &uid, &cnt, &pos);
    if (t != 1 && t != 2) {
      FUNC0(get, 0);
    }
    if (t == 1) {
      cnt = MAX_CNT;
    } else {
      int t = FUNC11 (key + 11 + pos, ",%d", &min_common);
      if (t <= 0) {
        min_common = 1;
      }
    }

    if (2 * cnt + 5 > MAX_FRIENDS) {
      active_aio_queries |= (1 << 19);
      cnt = (MAX_FRIENDS - 5) / 2;
    }

    int res = FUNC6 (uid, cnt, min_common, fr_buff);
    if (res >= 0) {
      char *s = buf;
      int n = fr_buff[0], i;
      s += FUNC10 (s, "%d", n);
      for (i = 0; i < n; i++) {
        s += FUNC10 (s, ",%d,%d", fr_buff[i * 2 + 1], fr_buff[i * 2 + 2]);
      }
      FUNC9 (c, old_key, buf, s - buf);
    }

    FUNC0(get, res);
  }

  FUNC0(get, 0);
}