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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int FUNC0 (int,int,long long) ; 
 int FUNC1 (int,int,long long) ; 
 int FUNC2 (int,int,int,long long) ; 
 int FUNC3 (int,int,int,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char const*,long long) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int FUNC6 (int,int,int,int,long long*) ; 
 int FUNC7 (char*,char*,long long) ; 
 int FUNC8 (char const*,char*,int*,int*,...) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC11 (struct connection *c, int op, const char *key, int key_len, long long arg) {
  int user_id, local_id, res;
  if (verbosity > 1) {
    FUNC4 (stderr, "memcache_incr: op=%d, key='%s', val=%lld\n", op, key, arg);
  }

  FUNC5 (c);

  if (FUNC8 (key, "flags%d_%d", &user_id, &local_id) >= 2 && user_id && local_id > 0) {
    if (op) {
      res = FUNC0 (user_id, local_id, arg);
    } else {
      res = FUNC1 (user_id, local_id, arg);
    }
    if (res == -2) {
      FUNC10 (&c->Out, "4294967295\r\n", 12);
      return 0;
    } else if (res >= 0) {
      FUNC10 (&c->Out, stats_buff, FUNC7 (stats_buff, "%d\r\n", res));
      return 0;
    }
  }

  if (key_len >= 5 && !FUNC9 (key, "extra", 5)) {
    int local_id, value_id;
    if (FUNC8 (key, "extra%d_%d:%d", &user_id, &local_id, &value_id) == 3 && user_id && local_id > 0 && (unsigned) value_id < 8) {
      res = FUNC2 (user_id, local_id, value_id, op ? -arg : arg);
      if (res <= 0) {
        FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
        return 0;
      } else {
        long long nres;
        res = FUNC6 (user_id, local_id, value_id, -1, &nres);
        if (res == -2) {
          FUNC10 (&c->Out, "-2147483648\r\n", 13);
          return 0;
        } else if (res <= 0) {
          FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
          return 0;
        }
        FUNC10 (&c->Out, stats_buff, FUNC7 (stats_buff, "%d\r\n", (int) nres));
        return 0;
      }
    }
  }

  if (key_len >= 5 && !FUNC9 (key, "Extra", 5)) {
    int local_id, value_id;
    if (FUNC8 (key, "Extra%d_%d:%d", &user_id, &local_id, &value_id) == 3 && user_id && local_id > 0 && value_id >= 8 && value_id < 12) {
      res = FUNC3 (user_id, local_id, value_id, op ? -arg : arg);
      if (res <= 0) {
        FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
        return 0;
      } else {
        long long nres;
        res = FUNC6 (user_id, local_id, value_id, -1, &nres);
        if (res == -2) {
          FUNC10 (&c->Out, "-9223372036854775808\r\n", 22);
          return 0;
        } else if (res <= 0) {
          FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
          return 0;
        }
        FUNC10 (&c->Out, stats_buff, FUNC7 (stats_buff, "%lld\r\n", nres));
        return 0;
      }
    }
  }

  FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}