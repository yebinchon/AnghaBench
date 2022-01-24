#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ transaction_t ;
struct pair_hostid_result {size_t host_id; } ;
struct TYPE_5__ {char* hostname; } ;

/* Variables and functions */
 TYPE_3__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pair_hostid_result*,int*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pair_hostid_result*) ; 
 struct pair_hostid_result* FUNC3 (int*,unsigned long long,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (unsigned long long,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,char*,char*) ; 

char *FUNC10 (unsigned long long volume_id, int transaction_id, unsigned result_or, unsigned result_and) {
  transaction_t *T = FUNC4 (volume_id, transaction_id, 0);
  if (T == NULL) {
    return NULL;
  }
  int n;
  struct pair_hostid_result *a = FUNC3 (&n, volume_id, T->root);
  if (a == NULL) {
    return NULL;
  }

  FUNC1 (a, &n, result_or, result_and);

  if (!n) {
    FUNC2 (a);
    return FUNC7 ("");
  }

  int i, l = 0;

  for (i = 0; i < n; i++) {
    l += FUNC8 (HOSTS[a[i].host_id]->hostname) + 1;
  }

  char *z = FUNC5 (l), *p = z;
  if (z == NULL) {
    FUNC2 (a);
    return NULL;
  }

  for (i = 0; i < n; i++) {
    if (i > 0) {
      *p++= ',';
    }
    FUNC6 (p, HOSTS[a[i].host_id]->hostname);
    p += FUNC8 (p);
  }
  FUNC9 (4, "p = %p, z + l = %p\n", p, z + l);
  FUNC0 (p == (z + l - 1));
  FUNC2 (a);
  return z;
}