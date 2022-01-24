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
struct data {int data_len; char* data; } ;
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int /*<<< orphan*/  DELAY_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int binlog_disabled ; 
 int /*<<< orphan*/  cmd_decr ; 
 int /*<<< orphan*/  cmd_incr ; 
 struct data FUNC1 (char const*,int) ; 
 int FUNC2 (int,char const*,int,long long) ; 
 int FUNC3 (char const*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  mct_add ; 
 int FUNC6 (struct connection*) ; 
 scalar_t__ protected_mode ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC11 (struct connection *c, int op, const char *key, int key_len, long long arg) {
  if (binlog_disabled == 1) {
    return 0;
  }
  if (protected_mode) {
    return 0;
  }
  c->flags &= ~C_INTIMEOUT;
  if (verbosity >= 3) {
    FUNC5 (stderr, "memcache_incr: op=%d, key='%s', val=%lld\n", op, key, arg);
  }
  if (op == 1) {
    cmd_decr++;
  } else {
    cmd_incr++;
  }

  int force_create = 0;
  if (key_len >= 3 && !FUNC9 (key, "###", 3)) {
    force_create = 1;
    key += 3;
    key_len -= 3;
  }
  int x = FUNC3 (key, key_len, 1);
  if (x == -2) {
    if (!FUNC6 (c)) {
      FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
    }
    return 0;
  }

  if (x == 0 && force_create) {
    static char a[30];
    if (op) {
      arg = -arg;
    }
    FUNC7 (a, "%lld", arg);
    FUNC0 (FUNC4 (mct_add, key, key_len, 0, DELAY_INFINITY, a, FUNC8 (a)) != -2);
  } else {

    x = FUNC2(op, key, key_len, arg);
    if (verbosity >= 4) { FUNC5 (stderr, "do_pmemcached_incr returns %d\n", x); }
    FUNC0 (x != -2);

    if (x == -1) {
      FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
      return 0;
    }
  }

  struct data y = FUNC1 (key, key_len);

  if (verbosity >= 4) { FUNC5 (stderr, "y.data_len = %d\n", y.data_len); }

  if (y.data_len == -2) {
    return FUNC6 (c);
  }

  if (y.data_len == -1) {
    FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
  } else {
    FUNC10 (&c->Out, y.data, y.data_len);
    FUNC10 (&c->Out, "\r\n", 2);
  }

  return 0;
}