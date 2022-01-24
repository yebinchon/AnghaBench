#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_15__ {size_t module; int dash_size; } ;
struct TYPE_14__ {TYPE_1__* module; int /*<<< orphan*/  current; } ;
struct TYPE_13__ {int offset; } ;
struct TYPE_12__ {scalar_t__ no_column_names; } ;
typedef  TYPE_2__ GScroll ;
typedef  size_t GModule ;
typedef  TYPE_3__ GDashModule ;

/* Variables and functions */
 int DASH_COLS_POS ; 
 int DASH_DASHES_POS ; 
 int DASH_EMPTY_POS ; 
 int DASH_HEAD_POS ; 
 TYPE_11__ conf ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC6 (WINDOW * win, GDashModule * data, int *y, int *offset,
                int *total, GScroll * gscroll)
{
  GModule module = data->module;
  int i, j, size, h, w, data_pos = FUNC0 ();

  FUNC1 (win, h, w);
  (void) w;

  size = data->dash_size;
  for (i = *offset, j = 0; i < size; i++) {
    /* header */
    if ((i % size) == DASH_HEAD_POS) {
      FUNC5 (win, data, gscroll->current, y);
    } else if ((i % size) == DASH_EMPTY_POS && conf.no_column_names) {
      /* if no column names, print panel description */
      FUNC4 (win, data, y);
    } else if ((i % size) == DASH_EMPTY_POS || (i % size) == size - 1) {
      /* blank lines */
      (*y)++;
    } else if ((i % size) == DASH_DASHES_POS && !conf.no_column_names) {
      /* account for already printed dash lines under columns */
      (*y)++;
    } else if ((i % size) == DASH_COLS_POS && !conf.no_column_names) {
      /* column headers lines */
      FUNC2 (win, data, y);
      (*y)++;
    } else if ((i % size) >= data_pos || (i % size) <= size - 2) {
      /* account for 2 lines at the header and 2 blank lines */
      j = ((i % size) - data_pos) + gscroll->module[module].offset;
      /* actual data */
      FUNC3 (win, data, y, j, gscroll);
    } else {
      /* everything else should be empty */
      (*y)++;
    }
    (*total)++;
    if (*y >= h)
      break;
  }
}