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
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_INTIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int binlog_disabled ; 
 int /*<<< orphan*/  cmd_delete ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 scalar_t__ protected_mode ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC6 (struct connection *c, const char *key, int key_len) {
  if (binlog_disabled == 1) {
    return 0;
  }
  if (protected_mode) {
    return 0;
  }
  c->flags &= ~C_INTIMEOUT;

  if (verbosity >= 3) {
    FUNC3 (stderr, "memcache_delete: key='%s'\n", key);
  }
  cmd_delete++;

  if (FUNC2 (key, key_len, 1) == -2) {
    if (!FUNC4 (c)) {
      FUNC5 (&c->Out, "NOT_FOUND\r\n", 11);
    }
    return 0;
  }
  int x = FUNC1 (key, key_len);
  FUNC0 (x != -2);

  if (x != -1) {
    FUNC5 (&c->Out, "DELETED\r\n", 9);
    return 0;
  }

  FUNC5 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}