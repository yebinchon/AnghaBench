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
struct connection {int /*<<< orphan*/  In; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int DELAY_INFINITY ; 
 int MAX_VALUE_LEN ; 
 int SEC_IN_MONTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long long FUNC1 (scalar_t__*) ; 
 int binlog_disabled ; 
 int /*<<< orphan*/  cmd_set ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int,long long) ; 
 int FUNC3 (char const*,int,int) ; 
 int FUNC4 (int,char const*,int,int,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,int,int,int,int) ; 
 scalar_t__ FUNC6 () ; 
 int mct_set ; 
 scalar_t__ FUNC7 (struct connection*) ; 
 scalar_t__ protected_mode ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 
 scalar_t__* value_buff ; 
 int verbosity ; 

int FUNC10 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  if (binlog_disabled == 1) {
    return -2;
  }
  if (protected_mode) {
    return -2;
  }
  c->flags &= ~C_INTIMEOUT;
  cmd_set++;

  if (delay == 0) {
    delay = DELAY_INFINITY;
  } else if (delay <= SEC_IN_MONTH) {
    delay += FUNC6();
  }

  if (verbosity >= 3) {
    FUNC5 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d, flags = %d, exp_time = %d\n", key, key_len, size, flags, delay);
  }

  int force_create = 0;
  if (key_len >= 6 && !FUNC9 (key, "##incr##", 8)) {
    force_create = 1;
    key += 8;
    key_len -= 8;
  }

  if (size < MAX_VALUE_LEN) {
    int x = FUNC3 (key, key_len, op != mct_set || force_create);
    if (x == -2) {
      if (FUNC7 (c)) {
        return 0;
      } else {
        FUNC0 (FUNC8 (&c->In, value_buff, size) == size);
        return 0;
      }
    } else {
      FUNC0 (FUNC8 (&c->In, value_buff, size) == size);
      value_buff[size] = 0;
      int result;
      if (force_create) {
        if (x == 0) {
          result = FUNC4 (op, key, key_len, flags, delay, value_buff, size);
        } else {
          long long arg = FUNC1 (value_buff);
          FUNC0 (FUNC2 (0, key, key_len, arg) != -2);
          result = 1;
        }
      } else {
        result = FUNC4 (op, key, key_len, flags, delay, value_buff, size);
      }
      FUNC0 (result != -2);
      return result;
    }
  }

  return -2;
}