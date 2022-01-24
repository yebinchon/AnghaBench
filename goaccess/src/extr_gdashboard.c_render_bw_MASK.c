#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_19__ {int attr; TYPE_4__* pair; } ;
struct TYPE_16__ {scalar_t__ bw_len; } ;
struct TYPE_18__ {scalar_t__ module; TYPE_5__ meta; TYPE_3__* data; } ;
struct TYPE_17__ {int y; int w; int idx; int sel; int /*<<< orphan*/ * win; } ;
struct TYPE_15__ {int /*<<< orphan*/  idx; } ;
struct TYPE_14__ {scalar_t__ is_subitem; TYPE_2__* metrics; } ;
struct TYPE_12__ {char* sbw; } ;
struct TYPE_13__ {TYPE_1__ bw; } ;
typedef  TYPE_6__ GDashRender ;
typedef  TYPE_7__ GDashModule ;
typedef  TYPE_8__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_MTRC_BW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DASH_SPACE ; 
 scalar_t__ HOSTS ; 
 int /*<<< orphan*/  color_selected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC4 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8 (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = FUNC3 (COLOR_MTRC_BW, data->module);
  WINDOW *win = render.win;

  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;
  char *bw = data->data[idx].metrics->bw.sbw;

  if (data->module == HOSTS && data->data[idx].is_subitem)
    goto out;

  if (sel) {
    char *fw = FUNC4 (data->meta.bw_len, 's');
    /* selected state */
    FUNC1 (win, bw, fw, y, *x, w, color_selected);
    FUNC2 (fw);
  } else {
    /* regular state */
    FUNC7 (win, color->attr | FUNC0 (color->pair->idx));
    FUNC5 (win, y, *x, "%*s", data->meta.bw_len, bw);
    FUNC6 (win, color->attr | FUNC0 (color->pair->idx));
  }

out:
  *x += data->meta.bw_len + DASH_SPACE;
}