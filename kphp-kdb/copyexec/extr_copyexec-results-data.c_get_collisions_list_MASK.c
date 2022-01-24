#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  last_data_time; int /*<<< orphan*/  first_data_time; int /*<<< orphan*/  random_tag; int /*<<< orphan*/  hostname; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  disabled; } ;
typedef  TYPE_1__ host_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 TYPE_1__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** FUNC1 (int,int) ; 
 int /*<<< orphan*/  cmp_phost_t ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int hosts ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 

char *FUNC10 (void) {
  FUNC8 (3, "get_collistions_list: hosts = %d\n", hosts);
  int i, j, k;
  char buf[1024];
  if (!hosts) {
    return NULL;
  }
  host_t **a = FUNC1 (hosts, sizeof (a[0]));
  if (a == NULL) {
    return NULL;
  }
  int n = 0;
  for (i = 0; i < hosts; i++) {
    if (!HOSTS[i+1]->disabled) {
      a[n++] = HOSTS[i+1];
    }
  }
  if (!n) {
    return NULL;
  }
  FUNC4 (a, n, sizeof (a[0]), cmp_phost_t);
  int l = 0;
  for (i = 0; i < n; i = j) {
    for (j = i + 1; j < n && !FUNC9 (a[i], a[j]); j++) { }
    int m = j - i;
    if (m > 1) {
      for (k = i; k < j; k++) {
        l += FUNC5 (buf, sizeof (buf), "%llu,%s,0x%llx,%d,%d\n", a[k]->volume_id, a[k]->hostname, a[k]->random_tag, a[k]->first_data_time, a[k]->last_data_time);
      }
    }
  }
  if (l == 0) {
    return FUNC7 ("");
  }
  l++;
  char *z = FUNC3 (l), *p = z;
  if (z == NULL) {
    FUNC2 (a);
    return NULL;
  }
  for (i = 0; i < n; i = j) {
    for (j = i + 1; j < n && !FUNC9 (a[i], a[j]); j++) { }
    int m = j - i;
    if (m > 1) {
      for (k = i; k < j; k++) {
        p += FUNC6 (p, "%llu,%s,0x%llx,%d,%d\n", a[k]->volume_id, a[k]->hostname, a[k]->random_tag, a[k]->first_data_time, a[k]->last_data_time);
      }
    }
  }
  FUNC2 (a);
  FUNC0 (p == (z + l - 1));
  return z;
}