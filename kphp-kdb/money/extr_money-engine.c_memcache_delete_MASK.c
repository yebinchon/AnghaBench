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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4 (struct connection *c, const char *key, int key_len) {
  int temp_id;
  if (verbosity > 1) {
    FUNC1 (stderr, "memcache_delete: key='%s'\n", key);
  }

  if (FUNC2 (key, "transaction%d", &temp_id) >= 1 && temp_id > 0) {
    if (FUNC0 (temp_id) > 0) {
      FUNC3 (&c->Out, "DELETED\r\n", 9);
      return 0;
    } else {
      FUNC3 (&c->Out, "NOT_FOUND\r\n", 11);
      return 0;
    }
  }

  FUNC3 (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}