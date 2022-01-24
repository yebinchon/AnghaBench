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
typedef  int /*<<< orphan*/  a ;
struct TYPE_2__ {unsigned long long volume_id; int last_action_time; char* hostname; int /*<<< orphan*/  disabled; } ;

/* Variables and functions */
 TYPE_1__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int hosts ; 
 char* FUNC3 (int) ; 
 int now ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned long long,int) ; 

char *FUNC8 (unsigned long long volume_id, int delay) {
  FUNC7 (3, "get_dead_hosts_list (volume_id:%llu, delay: %d)\n", volume_id, delay);
  int *a = FUNC1 (hosts, sizeof (a[0]));
  if (a == NULL) {
    return NULL;
  }
  int i, n = 0, l = 0, t = now - delay;
  for (i = 1; i <= hosts; i++) {
    if (HOSTS[i]->volume_id == volume_id && !HOSTS[i]->disabled && HOSTS[i]->last_action_time < t) {
      a[n++] = i;
      l += FUNC6 (HOSTS[i]->hostname) + 1;
    }
  }
  if (!n) {
    return FUNC5 ("");
  }
  char *z = FUNC3 (l), *p = z;
  if (z == NULL) {
    FUNC2 (a);
    return NULL;
  }

  for (i = 0; i < n; i++) {
    if (i > 0) {
      *p++= ',';
    }
    FUNC4 (p, HOSTS[a[i]]->hostname);
    p += FUNC6 (p);
  }
  FUNC0 (p == (z + l - 1));
  FUNC2 (a);
  return z;
}