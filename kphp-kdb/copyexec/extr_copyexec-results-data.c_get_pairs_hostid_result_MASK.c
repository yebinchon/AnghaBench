#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_t ;
struct pair_hostid_result {int host_id; scalar_t__ result; } ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_2__ {unsigned long long volume_id; int /*<<< orphan*/  disabled; } ;

/* Variables and functions */
 TYPE_1__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct pair_hostid_result* FUNC1 (int,int) ; 
 int hosts ; 
 int /*<<< orphan*/  FUNC2 (struct pair_hostid_result*,int*,unsigned long long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static struct pair_hostid_result *FUNC4 (int *k, unsigned long long volume_id, tree_t *P) {
  *k = 0;
  struct pair_hostid_result *a = FUNC1 (hosts, sizeof (a[0]));
  if (a == NULL) {
    return NULL;
  }
  FUNC2 (a, k, volume_id, P);
  const int first_host_id = (!(*k)) ? 1 : (a[(*k)-1].host_id + 1);
  int i;
  for (i = first_host_id; i <= hosts; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled) {
      FUNC0 ((*k) < hosts);
      a[*k].host_id = i;
      a[*k].result = 0;
      (*k)++;
    }
  }
  FUNC3 (4, "get_pairs_hostid_result: *k = %d\n", *k);
  return a;
}