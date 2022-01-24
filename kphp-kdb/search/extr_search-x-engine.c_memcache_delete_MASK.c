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
 int /*<<< orphan*/  delete_queries ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC3 (int,char*,long long,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5 (struct connection *c, const char *key, int key_len) {
  int owner_id, item_id;

  if (verbosity > 0) {
    FUNC1 (stderr, "delete \"%s\"\n", key);
  }

  int res = 0;

  switch (*key) {
  case 'i':
    if (FUNC2 (key, "item%d_%d ", &owner_id, &item_id) == 2 && owner_id && item_id > 0) {
      delete_queries++;
      if (verbosity >= 1) {
      	FUNC1 (stderr, "delete_item (%d,%d)\n", owner_id, item_id);
      }

      FUNC3 (3, "delete: item_id=%lld\n", ((long long) item_id << 32) + (unsigned) owner_id);

      res = FUNC0 (((long long) item_id << 32) + (unsigned) owner_id);
    } else if (FUNC2 (key, "item%d ", &item_id) == 1 && item_id > 0) {
      delete_queries++;
      FUNC3 (1, "delete_item (%d,%d)\n", 0, item_id);
      FUNC3 (3, "delete: item_id=%lld\n", (long long)item_id);

      res = FUNC0 (item_id);
    }
    break;
  }
  if (res > 0) {
    FUNC4 (&c->Out, "DELETED\r\n", 9);
  } else {
    FUNC4 (&c->Out, "NOT_FOUND\r\n", 11);
  }

  return 0;
}