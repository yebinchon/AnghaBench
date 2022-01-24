#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int history_ts; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 () ; 

int FUNC4 (int user_id, int force) {
  user_t *U;

  if (FUNC0 (user_id) < 0) {
    return -1;
  }

  if (force) {
    U = FUNC2 (user_id);
    if (!U->history_ts) {
      U->history_ts = FUNC3 ();
    }
  } else {
    U = FUNC1 (user_id);
    if (!U || !U->history_ts) {
      return 0;
    }
  }

  return U->history_ts;
}