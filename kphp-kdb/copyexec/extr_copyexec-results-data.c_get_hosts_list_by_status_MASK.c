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
struct pair_hostid_result {int result; size_t host_id; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {char* hostname; } ;

/* Variables and functions */
 TYPE_3__** HOSTS ; 
 int FUNC0 (char const* const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pair_hostid_result*,int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pair_hostid_result*) ; 
 struct pair_hostid_result* FUNC4 (int*,unsigned long long,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (unsigned long long,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 

char *FUNC12 (unsigned long long volume_id, int transaction_id, const char *const status) {
  char buf[64];
  int s = FUNC0 (status);
  if (s < 0) {
    FUNC11 (3, "get_hosts_list_by_status: unknown status \"%s\"\n", status);
    return NULL;
  }
  transaction_t *T = FUNC5 (volume_id, transaction_id, 0);
  if (T == NULL) {
    FUNC11 (3, "get_hosts_list_by_status: get_transaction_f (0x%llx, %d) returns NULL.\n", volume_id, transaction_id);
    return NULL;
  }
  int n;
  struct pair_hostid_result *a = FUNC4 (&n, volume_id, T->root);
  if (a == NULL) {
    FUNC11 (3, "get_hosts_list_by_status: get_pairs_hostid_result returns NULL.\n");
    return NULL;
  }

  FUNC2 (a, &n, ((unsigned) s) << 28, 0xf0000000U);

  if (n == 0) {
    FUNC3 (a);
    return FUNC9 ("");
  }

  int i, l = 0;

  for (i = 0; i < n; i++) {
    a[i].result &= 0x0fffffffU;
  }

  for (i = 0; i < n; i++) {
    int o = FUNC7 (buf, sizeof (buf), "0x%04x", a[i].result);
    FUNC1 (o < (int) sizeof (buf));
    l += o + FUNC10 (HOSTS[a[i].host_id]->hostname) + 2; /* 2 : two commas */
  }
  char *z = FUNC6 (l), *p = z;
  for (i = 0; i < n; i++) {
    if (i > 0) {
      *p++ = ',';
    }
    p += FUNC8 (p, "%s,0x%04x", HOSTS[a[i].host_id]->hostname, a[i].result);
  }
  FUNC1 (p == (z + (l - 1)));
  FUNC3 (a);
  return z;
}