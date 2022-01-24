#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long long volume_id; char* hostname; int /*<<< orphan*/  last_data_time; int /*<<< orphan*/  first_data_time; int /*<<< orphan*/  random_tag; scalar_t__ disabled; } ;
typedef  TYPE_1__ host_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 TYPE_1__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int hosts ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 

char *FUNC6 (unsigned long long volume_id) {
  FUNC5 (3, "get_disabled (volume_id: %llu)\n", volume_id);
  char buf[32];
  if (hosts <= 0) {
    return FUNC4 ("");
  }
  int i, l = 0, m = 0;
  host_t *h;
  for (i = 1; i <= hosts; i++) {
    h = HOSTS[i];
    if (h->disabled && h->volume_id == volume_id) {
      l += FUNC2 (buf, sizeof (buf), "%s,0x%llx,%d,%d\n", h->hostname, h->random_tag, h->first_data_time, h->last_data_time);
      m++;
    }
  }
  if (!m) {
    return FUNC4 ("");
  }
  FUNC5 (4, "get_disabled: l = %d, m = %d\n", l, m);

  char *z = FUNC1 (l + 1), *p = z;
  if (z == NULL) {
    return NULL;
  }

  for (i = 1; i <= hosts; i++) {
    h = HOSTS[i];
    if (h->disabled && h->volume_id == volume_id) {
      p += FUNC3 (p, "%s,0x%llx,%d,%d\n", h->hostname, h->random_tag, h->first_data_time, h->last_data_time);
    }
  }

  FUNC0 (p == (z + l));
  return z;
}