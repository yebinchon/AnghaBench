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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_2__ {unsigned long long volume_id; int last_action_time; int /*<<< orphan*/  last_data_time; int /*<<< orphan*/  first_data_time; int /*<<< orphan*/  random_tag; int /*<<< orphan*/  hostname; int /*<<< orphan*/  disabled; } ;

/* Variables and functions */
 TYPE_1__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int hosts ; 
 char* FUNC3 (int) ; 
 int now ; 
 scalar_t__ FUNC4 (char*,int,char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned long long,int) ; 

char *FUNC8 (unsigned long long volume_id, int delay) {
  FUNC7 (3, "get_dead_hosts_list_full (volume_id:%llu, delay: %d)\n", volume_id, delay);
  char buf[1024];
  int *a = FUNC1 (hosts, sizeof (a[0]));
  if (a == NULL) {
    return NULL;
  }
  int i, n = 0, l = 0, t = now - delay;
  for (i = 1; i <= hosts; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled && HOSTS[i]->last_action_time < t) {
      a[n++] = i;
      l += FUNC4 (buf, sizeof (buf), "%llu,%s,0x%llx,%d,%d\n", HOSTS[i]->volume_id, HOSTS[i]->hostname, HOSTS[i]->random_tag, HOSTS[i]->first_data_time, HOSTS[i]->last_data_time);
    }
  }
  if (!n) {
    return FUNC6 ("");
  }
  l++;
  char *z = FUNC3 (l), *p = z;
  if (z == NULL) {
    FUNC2 (a);
    return NULL;
  }

  for (i = 0; i < n; i++) {
    p += FUNC5 (p, "%llu,%s,0x%llx,%d,%d\n", HOSTS[a[i]]->volume_id, HOSTS[a[i]]->hostname, HOSTS[a[i]]->random_tag, HOSTS[a[i]]->first_data_time, HOSTS[a[i]]->last_data_time);
  }
  FUNC0 (p == (z + l - 1));
  FUNC2 (a);
  return z;
}