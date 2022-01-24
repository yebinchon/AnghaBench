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
struct hashset_ll {int filled; } ;
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int delete_hash_query_items ; 
 int FUNC1 (struct hashset_ll*) ; 
 int /*<<< orphan*/  FUNC2 (struct hashset_ll*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashset_ll*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hashset_ll*,long long) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (char*,char*,long long*) ; 
 char* FUNC7 (char*,char) ; 
 char* value_buff ; 
 int /*<<< orphan*/  FUNC8 (int,char*,long long) ; 

int FUNC9 (struct connection *c, int size) {
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
  struct hashset_ll H;
  if (!FUNC3 (&H, n)) {
    return 0;
  }
  char *p = a;
  while (*p) {
    char *q = FUNC7 (p, ',');
    if (q != NULL) {
      *q = 0;
    }
    long long u;
    if (FUNC6 (p, "%llx", &u) != 1) {
      break;
    }
    if (H.filled >= n) { break; }
    FUNC8 (3, "u = %llx\n", u);
    if (u) {
      FUNC4 (&H, u);
    }
    if (q == NULL) {
      break;
    }
    p = q + 1;
  }
  int t = FUNC1 (&H);
  delete_hash_query_items += t;
  FUNC2 (&H);
  return 1;
}