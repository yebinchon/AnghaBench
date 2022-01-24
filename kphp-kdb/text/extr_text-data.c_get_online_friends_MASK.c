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
struct TYPE_4__ {int /*<<< orphan*/  online_tree; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int R ; 
 int RA ; 
 int R_cnt ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6 (int user_id, int mode) {
  user_t *U = FUNC3 (user_id);
  R_cnt = 0;
  if (!U) {
    return FUNC1 (user_id) < 0 ? -1 : 0;
  }
  RA = R;
  FUNC0 (U);
  FUNC2 (U->online_tree, mode);
  R_cnt = RA - R;
  if (mode) {
    FUNC5 (0, (R_cnt >> 1) - 1);
    return R_cnt >> 1;
  } else {
    FUNC4 (0, R_cnt - 1);
    return R_cnt;
  }
}