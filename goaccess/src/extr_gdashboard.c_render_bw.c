
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_19__ {int attr; TYPE_4__* pair; } ;
struct TYPE_16__ {scalar_t__ bw_len; } ;
struct TYPE_18__ {scalar_t__ module; TYPE_5__ meta; TYPE_3__* data; } ;
struct TYPE_17__ {int y; int w; int idx; int sel; int * win; } ;
struct TYPE_15__ {int idx; } ;
struct TYPE_14__ {scalar_t__ is_subitem; TYPE_2__* metrics; } ;
struct TYPE_12__ {char* sbw; } ;
struct TYPE_13__ {TYPE_1__ bw; } ;
typedef TYPE_6__ GDashRender ;
typedef TYPE_7__ GDashModule ;
typedef TYPE_8__ GColors ;


 int COLOR_MTRC_BW ;
 int COLOR_PAIR (int ) ;
 scalar_t__ DASH_SPACE ;
 scalar_t__ HOSTS ;
 int color_selected ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 int free (char*) ;
 TYPE_8__* get_color_by_item_module (int ,scalar_t__) ;
 char* get_fixed_fmt_width (scalar_t__,char) ;
 int mvwprintw (int *,int,int,char*,scalar_t__,char*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_bw (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = get_color_by_item_module (COLOR_MTRC_BW, data->module);
  WINDOW *win = render.win;

  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;
  char *bw = data->data[idx].metrics->bw.sbw;

  if (data->module == HOSTS && data->data[idx].is_subitem)
    goto out;

  if (sel) {
    char *fw = get_fixed_fmt_width (data->meta.bw_len, 's');

    draw_header (win, bw, fw, y, *x, w, color_selected);
    free (fw);
  } else {

    wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
    mvwprintw (win, y, *x, "%*s", data->meta.bw_len, bw);
    wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
  }

out:
  *x += data->meta.bw_len + DASH_SPACE;
}
