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
struct TYPE_2__ {int tot_buckets; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (void) {
  int n = FUNC1 ();
  if (FUNC3 ()) {
    FUNC4 ();
    return -1;
  }
  FUNC0 (CC->tot_buckets);
  FUNC0 (n >= 0);
  n %= CC->tot_buckets;
  FUNC5 ();
  return FUNC2 (CC->buckets[n]);
}