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
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete ; 
 scalar_t__ FUNC1 (long long) ; 
 scalar_t__ FUNC2 (long long) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC5 (char*,char*,long long*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC8 (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    FUNC4 (stderr, "memcache_delete: key='%s'\n", old_key);
  }

  char *key;
  int key_len;

  FUNC3 (old_key, old_key_len, &key, &key_len);

  if (key_len >= 18 && !FUNC6 (key, "letters_by_task_id", 18)) {
    long long task_id;

    if (FUNC5 (key + 18, "%lld", &task_id) == 1 && FUNC2 (task_id)) {
      FUNC7 (&c->Out, "DELETED\r\n", 9);
    } else {
      FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
    }

    FUNC0(delete, 0);
  }

  if (key_len >= 6 && !FUNC6 (key, "letter", 6)) {
    long long id;

    if (FUNC5 (key + 6, "%lld", &id) == 1 && FUNC1 (id)) {
      FUNC7 (&c->Out, "DELETED\r\n", 9);
    } else {
      FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
    }

    FUNC0(delete, 0);
  }

  FUNC7 (&c->Out, "NOT_FOUND\r\n", 11);
  FUNC0(delete, 0);
}