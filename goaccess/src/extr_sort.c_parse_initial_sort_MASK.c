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
struct TYPE_2__ {int sort_panel_idx; int /*<<< orphan*/ * sort_panels; } ;

/* Variables and functions */
 int SORT_FIELD_LEN ; 
 int SORT_MODULE_LEN ; 
 int SORT_ORDER_LEN ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 

void
FUNC2 (void)
{
  int i;
  char module[SORT_MODULE_LEN], field[SORT_FIELD_LEN], order[SORT_ORDER_LEN];
  for (i = 0; i < conf.sort_panel_idx; ++i) {
    if (FUNC1
        (conf.sort_panels[i], "%15[^','],%11[^','],%4s", module, field,
         order) != 3)
      continue;
    FUNC0 (module, field, order);
  }
}