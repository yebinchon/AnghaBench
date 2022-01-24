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
struct TYPE_3__ {int /*<<< orphan*/  sugg; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

int FUNC3 (int uid, int add, int *a, int an) {
  user *u = FUNC0 (uid);

  if (u == NULL) {
    return 0;
  }

  int i;
  for (i = 0; i < an; i++) {
    if (FUNC1() % an < 300) {
      FUNC2 (&u->sugg, a[i], add);
    }
  }

  return 1;
}