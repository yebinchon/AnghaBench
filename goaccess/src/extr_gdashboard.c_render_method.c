
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
struct TYPE_17__ {int attr; TYPE_3__* pair; } ;
struct TYPE_14__ {scalar_t__ method_len; } ;
struct TYPE_16__ {TYPE_4__ meta; TYPE_2__* data; int module; } ;
struct TYPE_15__ {int y; int w; int idx; int sel; int * win; } ;
struct TYPE_13__ {int idx; } ;
struct TYPE_12__ {TYPE_1__* metrics; } ;
struct TYPE_11__ {char* method; } ;
typedef TYPE_5__ GDashRender ;
typedef TYPE_6__ GDashModule ;
typedef TYPE_7__ GColors ;


 int COLOR_MTRC_MTHD ;
 int COLOR_PAIR (int ) ;
 scalar_t__ DASH_SPACE ;
 int color_selected ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 TYPE_7__* get_color_by_item_module (int ,int ) ;
 int mvwprintw (int *,int,int,char*,char*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_method (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = get_color_by_item_module (COLOR_MTRC_MTHD, data->module);
  WINDOW *win = render.win;

  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;
  char *method = data->data[idx].metrics->method;

  if (method == ((void*)0) || *method == '\0')
    return;

  if (sel) {

    draw_header (win, method, "%s", y, *x, w, color_selected);
  } else {

    wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
    mvwprintw (win, y, *x, "%s", method);
    wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
  }

  *x += data->meta.method_len + DASH_SPACE;
}
