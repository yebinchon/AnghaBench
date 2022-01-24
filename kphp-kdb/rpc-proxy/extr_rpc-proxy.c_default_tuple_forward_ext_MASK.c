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
struct TYPE_2__ {int cluster_mode; int step; int tot_buckets; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (int size) {
  FUNC3 (); //op
  int x = (CC->cluster_mode & 7);
  x --;
  if (x < 0) { x = 0; }
  if (x > size - 1) { x = size - 1; }
  int i;
  for (i = 0; i < x; i++) {
    FUNC3 ();
  }
  int n = FUNC3 ();
  if (n < 0) { n = -n; }
  if (n < 0) { n = 0; }
  if (FUNC2 ()) {
    FUNC4 ();
    return -1;
  }
  if (CC->step) {
    n /= CC->step;
  }
  FUNC0 (CC->tot_buckets);
  n %= CC->tot_buckets;
  FUNC5 ();
  return FUNC1 (CC->buckets[n]);
}