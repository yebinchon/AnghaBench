#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_17__ {int attr; TYPE_3__* pair; } ;
struct TYPE_14__ {scalar_t__ method_len; } ;
struct TYPE_16__ {TYPE_4__ meta; TYPE_2__* data; int /*<<< orphan*/  module; } ;
struct TYPE_15__ {int y; int w; int idx; int sel; int /*<<< orphan*/ * win; } ;
struct TYPE_13__ {int /*<<< orphan*/  idx; } ;
struct TYPE_12__ {TYPE_1__* metrics; } ;
struct TYPE_11__ {char* method; } ;
typedef  TYPE_5__ GDashRender ;
typedef  TYPE_6__ GDashModule ;
typedef  TYPE_7__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_MTRC_MTHD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DASH_SPACE ; 
 int /*<<< orphan*/  color_selected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6 (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = FUNC2 (COLOR_MTRC_MTHD, data->module);
  WINDOW *win = render.win;

  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;
  char *method = data->data[idx].metrics->method;

  if (method == NULL || *method == '\0')
    return;

  if (sel) {
    /* selected state */
    FUNC1 (win, method, "%s", y, *x, w, color_selected);
  } else {
    /* regular state */
    FUNC5 (win, color->attr | FUNC0 (color->pair->idx));
    FUNC3 (win, y, *x, "%s", method);
    FUNC4 (win, color->attr | FUNC0 (color->pair->idx));
  }

  *x += data->meta.method_len + DASH_SPACE;
}