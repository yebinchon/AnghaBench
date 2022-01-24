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
struct TYPE_3__ {int /*<<< orphan*/  fr_tree; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int R ; 
 int R_cat_mask ; 
 int R_end ; 
 int R_mode ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (int user_id, int cat_mask, int mode) {
  user_t *U = FUNC1 (user_id);
  if ((!U && FUNC0 (user_id) < 0) || mode < 0 || mode > 2) {
    return -1;
  }
  R_end = R;
  if (!U) {
    return 0;
  }
  R_cat_mask = cat_mask;
  R_mode = mode;
  FUNC2 (U->fr_tree);
  return (R_end - R) / (mode + 1);
}