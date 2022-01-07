
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
struct TYPE_13__ {int max_hits; } ;
struct TYPE_16__ {TYPE_3__ meta; TYPE_2__* data; } ;
struct TYPE_15__ {int y; int w; int idx; int sel; int * win; } ;
struct TYPE_14__ {int idx; } ;
struct TYPE_12__ {TYPE_1__* metrics; } ;
struct TYPE_11__ {int hits; } ;
typedef TYPE_5__ GDashRender ;
typedef TYPE_6__ GDashModule ;
typedef TYPE_7__ GColors ;


 int COLOR_BARS ;
 int COLOR_PAIR (int ) ;
 int color_selected ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 int free (char*) ;
 char* get_bars (int ,int ,int) ;
 TYPE_7__* get_color (int ) ;
 int mvwprintw (int *,int,int,char*,char*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_bars (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = get_color (COLOR_BARS);
  WINDOW *win = render.win;
  char *bar;
  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;

  bar = get_bars (data->data[idx].metrics->hits, data->meta.max_hits, *x);
  if (sel)
    draw_header (win, bar, "%s", y, *x, w, color_selected);
  else {
    wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
    mvwprintw (win, y, *x, "%s", bar);
    wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
  }
  free (bar);
}
