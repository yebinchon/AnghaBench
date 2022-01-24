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
 int MAX_RATES ; 
 int /*<<< orphan*/  delete_hash_queries ; 
 int delete_hash_query_items ; 
 int /*<<< orphan*/  delete_queries ; 
 int FUNC0 (int) ; 
 int FUNC1 (long long) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char) ; 
 int FUNC4 (char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC7 (struct connection *c, const char *key, int key_len) {
  int owner_id, item_id;
  FUNC5 (1, "delete \"%s\"\n", key);
  int res = 0;
  long long h = 0;
  char d, e;
  if (FUNC4 (key, "itemswithhash%llx", &h) == 1) {
    delete_hash_queries++;
    res = FUNC1 (h);
    delete_hash_query_items += res;
  } else if (FUNC4 (key, "item%d_%d ", &owner_id, &item_id) == 2 && owner_id && item_id > 0) {
    delete_queries++;
    FUNC5 (1, "delete_item (%d,%d)\n", owner_id, item_id);
    FUNC5 (3, "delete: item_id=%lld\n", ((long long) item_id << 32) + (unsigned) owner_id);
    res = FUNC0 (((long long) item_id << 32) + (unsigned) owner_id);
  } else if (FUNC4 (key, "item%d ", &item_id) == 1 && item_id > 0) {
    delete_queries++;
    FUNC5 (1, "delete_item (%d,%d)\n", 0, item_id);
    FUNC5 (3, "delete: item_id=%lld\n", (long long) item_id);
    res = FUNC0 (item_id);
  } else if (FUNC4 (key, "reset_all_%cate%c", &d, &e) == 2 && e == 's') {
    int p = FUNC3 (d);
    if (p >= 0 && p < MAX_RATES) {
      delete_queries++;
      res = FUNC2 (p);
    }
  }
  if (res > 0) {
    FUNC6 (&c->Out, "DELETED\r\n", 9);
  } else {
    FUNC6 (&c->Out, "NOT_FOUND\r\n", 11);
  }
  return 0;
}