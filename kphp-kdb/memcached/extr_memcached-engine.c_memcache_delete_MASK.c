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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmd_delete ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const*,int,long long) ; 
 long long FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC6 (struct connection *c, const char *key, int key_len) {
  if (verbosity > 0) {
    FUNC2 (stderr, "memcache_delete: key='%s'\n", key);
  }
  cmd_delete++;

  long long key_hash = FUNC4 (key, key_len);
  int x = FUNC3 (key, key_len, key_hash);

  FUNC0 (3);

  if (x != -1) {
    FUNC1 (x);
    FUNC5 (&c->Out, "DELETED\r\n", 9);
    return 0;
  }

  FUNC5 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}