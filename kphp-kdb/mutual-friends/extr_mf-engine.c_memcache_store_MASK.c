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
 int /*<<< orphan*/  INIT ; 
 int MAX_FRIENDS ; 
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int active_aio_queries ; 
 int FUNC1 (int,int,int*,int) ; 
 char* buf ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int,int) ; 
 int* fr_buff ; 
 int FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  set ; 
 int FUNC6 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int verbosity ; 

int FUNC8 (struct connection *c, int op, const char *old_key, int old_key_len, int flags, int delay, int size) {
  INIT;

  if (verbosity > 1) {
    FUNC3 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, \n", old_key, old_key_len, size);
  }

  if (size + 1 < MAX_VALUE_LEN) {
    char *key;
    int key_len;

    FUNC2 (old_key, old_key_len, &key, &key_len);

    //add("common_friends$id[,$add]", "$n,$f1,...,$fn")
    if (key_len >= 14 && !FUNC7 (key, "common_friends", 14)) {
      int uid;
      int add;
      int t = FUNC6 (key + 14, "%d,%d\n", &uid, &add);

      //TODO: comment for testing
      if (add != -1 && add != -4 && add != 1 && add != 4) {
        active_aio_queries |= (1 << 18);
        FUNC0(set, -2);
      }

      if (t != 1 && t != 2) {
        FUNC0(set, -2);
      }
      if (t == 1) {
        add = 1;
      }

      FUNC5 (&c->In, buf, size);
      buf[size] = 0;

      const char *s = buf;
      int n = FUNC4 (&s), i;

      if (n >= MAX_FRIENDS - 1) {
        active_aio_queries |= (1 << 15);
        FUNC0(set, 0);
      }

      if (n < 0) {
        active_aio_queries |= (1 << 16);
        FUNC0(set, 0);
      }

      for (i = 0; i < n; i++)
      {
        if (*s == 0) {
          FUNC0(set, 0);
        }
        s++;
        fr_buff[i] = FUNC4 (&s);
        if (fr_buff[i] <= 0 || fr_buff[i] >= (1 << 28)) {
          active_aio_queries |= (1 << 17);
          FUNC0(set, 0);
        }
      }

      int res = FUNC1 (uid, add, fr_buff, n);
      FUNC0(set, res);
    }
  }

  FUNC0(set, -2);
}