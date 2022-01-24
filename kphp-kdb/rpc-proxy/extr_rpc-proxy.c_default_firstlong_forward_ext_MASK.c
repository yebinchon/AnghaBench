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
struct TYPE_2__ {int step; long long tot_buckets; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 int /*<<< orphan*/  FUNC0 (long long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 long long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7 (void) {
  FUNC3 ();
  long long n = FUNC4 ();
  if (n < 0) { n = -n; }
  if (n < 0) { n = 0; }
  if (FUNC2 ()) {
    FUNC5 ();
    return -1;
  }
  if (CC->step) {
    n /= CC->step;
  }
  FUNC0 (CC->tot_buckets);
  n %= CC->tot_buckets;
  FUNC6 ();
  return FUNC1 (CC->buckets[n]);
}