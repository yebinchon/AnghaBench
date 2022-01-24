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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {scalar_t__ oneliner; int /*<<< orphan*/  value; int /*<<< orphan*/ * (* colorval ) () ;int /*<<< orphan*/  field; int /*<<< orphan*/ * (* colorlbl ) () ;} ;
typedef  int /*<<< orphan*/  GColors ;
typedef  TYPE_1__ Field ;

/* Variables and functions */
 size_t OVERALL_NUM_COLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (WINDOW * win, Field fields[], size_t n)
{
  GColors *color = NULL;
  int x_field = 2, x_value = 0;
  size_t i, j, k, max_field = 0, max_value = 0, mod_val, y;

  for (i = 0, k = 0, y = 2; i < n; i++) {
    /* new line every OVERALL_NUM_COLS */
    mod_val = k % OVERALL_NUM_COLS;

    /* reset position & length and increment row */
    if (k > 0 && mod_val == 0) {
      max_value = max_field = 0;
      x_value = x_field = 2;
      y++;
    }

    /* x pos = max length of field */
    x_field += max_field;

    color = (*fields[i].colorlbl) ();
    FUNC0 (win, fields[i].field, y, x_field, color);

    /* get max length of field in the same column */
    max_field = 0;
    for (j = 0; j < n; j++) {
      size_t len = FUNC2 (fields[j].field);
      if (j % OVERALL_NUM_COLS == mod_val && len > max_field &&
          !fields[j].oneliner)
        max_field = len;
    }
    /* get max length of value in the same column */
    max_value = 0;
    for (j = 0; j < n; j++) {
      size_t len = FUNC2 (fields[j].value);
      if (j % OVERALL_NUM_COLS == mod_val && len > max_value &&
          !fields[j].oneliner)
        max_value = len;
    }

    /* spacers */
    x_value = max_field + x_field + 1;
    max_field += max_value + 2;

    color = (*fields[i].colorval) ();
    FUNC1 (win, fields[i].value, y, x_value, color);
    k += fields[i].oneliner ? OVERALL_NUM_COLS : 1;
  }
}