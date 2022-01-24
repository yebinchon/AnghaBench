#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_logs_set_color {int type; long long field_value; int cnt; int and_mask; int xor_mask; } ;

/* Variables and functions */
 int FN ; 
 int LEV_LOGS_SET_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * color_int ; 
 int /*<<< orphan*/ * color_ll ; 
 int FUNC1 (int,long long) ; 
 scalar_t__ index_mode ; 
 int* FUNC2 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long long) ; 
 int* FUNC4 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,long long) ; 
 scalar_t__* std_t ; 
 int /*<<< orphan*/  write_only ; 

int FUNC6 (struct lev_logs_set_color *E) {
  if (!write_only || index_mode) {
    int field_num = E->type - LEV_LOGS_SET_COLOR;
    long long field_value = E->field_value;
    int cnt = E->cnt;
    int i;

    FUNC0 (0 <= field_num && field_num < FN);

    for (i = 0; i < cnt; i++) {
      int new_color = (FUNC1 (field_num, field_value) & E->and_mask) ^ E->xor_mask;
      if (new_color == 0) {
        if (std_t[field_num]) {
          FUNC5 (&color_ll[field_num], field_value + i);
        } else {
          FUNC3 (&color_int[field_num], field_value + i);
        }
      } else {
        if (std_t[field_num]) {
          *FUNC4 (&color_ll[field_num], field_value + i) = new_color;
        } else {
          *FUNC2 (&color_int[field_num], field_value + i) = new_color;
        }
      }
    }
  }

  return 1;
}