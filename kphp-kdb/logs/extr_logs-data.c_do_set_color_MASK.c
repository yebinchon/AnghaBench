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
struct lev_logs_set_color {long long field_value; int cnt; int and_mask; int xor_mask; } ;

/* Variables and functions */
 int FN ; 
 scalar_t__ LEV_LOGS_SET_COLOR ; 
 int MAX_COLOR_CNT ; 
 struct lev_logs_set_color* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lev_logs_set_color*) ; 

int FUNC2 (int field_num, long long field_value, int cnt, int and_mask, int xor_mask) {
  if (field_num < 0 || field_num >= FN || cnt <= 0 || cnt >= MAX_COLOR_CNT) {
    return 0;
  }

  struct lev_logs_set_color *E =
    FUNC0 (LEV_LOGS_SET_COLOR + field_num, sizeof (struct lev_logs_set_color), 0);

  E->field_value = field_value;
  E->cnt = cnt;
  E->and_mask = and_mask;
  E->xor_mask = xor_mask;

  return FUNC1 (E);
}