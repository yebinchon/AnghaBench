
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_17__ {int attr; TYPE_4__* pair; } ;
struct TYPE_16__ {scalar_t__ module; TYPE_3__* data; } ;
struct TYPE_15__ {int y; int w; int idx; int sel; int * win; } ;
struct TYPE_14__ {int idx; } ;
struct TYPE_13__ {scalar_t__ is_subitem; TYPE_2__* metrics; } ;
struct TYPE_11__ {char* sts; } ;
struct TYPE_12__ {TYPE_1__ cumts; } ;
typedef TYPE_5__ GDashRender ;
typedef TYPE_6__ GDashModule ;
typedef TYPE_7__ GColors ;


 int COLOR_MTRC_CUMTS ;
 int COLOR_PAIR (int ) ;
 scalar_t__ DASH_SPACE ;
 scalar_t__ DASH_SRV_TM_LEN ;
 scalar_t__ HOSTS ;
 int color_selected ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 TYPE_7__* get_color_by_item_module (int ,scalar_t__) ;
 int mvwprintw (int *,int,int,char*,char*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_cumts (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = get_color_by_item_module (COLOR_MTRC_CUMTS, data->module);
  WINDOW *win = render.win;

  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;
  char *cumts = data->data[idx].metrics->cumts.sts;

  if (data->module == HOSTS && data->data[idx].is_subitem)
    goto out;

  if (sel) {

    draw_header (win, cumts, "%9s", y, *x, w, color_selected);
  } else {

    wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
    mvwprintw (win, y, *x, "%9s", cumts);
    wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
  }

out:
  *x += DASH_SRV_TM_LEN + DASH_SPACE;
}
