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
struct hashset_int {int dummy; } ;
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int delete_hash_query_items ; 
 int FUNC1 (struct hashset_int*,int) ; 
 int /*<<< orphan*/  func_delete_multiple_rate ; 
 int /*<<< orphan*/  FUNC2 (struct hashset_int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashset_int*,int) ; 
 scalar_t__ FUNC4 (char*,struct hashset_int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 char* value_buff ; 

int FUNC6 (struct connection *c, int size, int rate_id) {
  char *a = value_buff;
  FUNC0 (FUNC5 (&c->In, a, size) == size);
  a[size] = 0;
  int i, n = 1;
  for (i = 0; i < size; i++) {
    if (a[i] == ',') {
      n++;
    }
  }
  if (n < 10) {
    n = 10;
  }
  struct hashset_int H;
  if (!FUNC3 (&H, n)) {
    return 0;
  }

  if (FUNC4 (value_buff, &H, func_delete_multiple_rate) < 0) {
    FUNC2 (&H);
    return 0;
  }

  int t = FUNC1 (&H, rate_id);
  delete_hash_query_items += t;
  FUNC2 (&H);
  return 1;
}