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
struct TYPE_3__ {int req_cnt; int /*<<< orphan*/  req_time_tree; int /*<<< orphan*/  req_tree; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int* R ; 
 int R_cat_mask ; 
 int* R_end ; 
 int R_max ; 
 int R_mode ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (int user_id, int num) {
  user_t *U = FUNC1 (user_id);

  if ((!U && FUNC0 (user_id) < 0) || num < -2 || num > 10000) {
    return -1;
  }

  R_end = R;

  if (!U) {
    return 0;
  }

  if (num < 0) {
    R_cat_mask = -1;
    R_mode = (num == -1 ? 2 : 0);

    FUNC2 (U->req_tree);

    return U->req_cnt;
  } else if (!num) {
    return U->req_cnt;
  }

  R_cat_mask = -1;
  R_mode = 2;
  R_max = num;

  FUNC3 (U->req_time_tree);
  int *R_tmp = R;
  while (R_tmp != R_end) {
    int t = R_tmp[0];
    R_tmp[0] = R_tmp[2];
    R_tmp[2] = -t;
    R_tmp += 3;
  }

  return U->req_cnt;
}