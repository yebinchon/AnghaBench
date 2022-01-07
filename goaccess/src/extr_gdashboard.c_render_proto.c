
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_15__ {int attr; TYPE_3__* pair; } ;
struct TYPE_14__ {TYPE_2__* data; int module; } ;
struct TYPE_13__ {int y; int w; int idx; int sel; int * win; } ;
struct TYPE_12__ {int idx; } ;
struct TYPE_11__ {TYPE_1__* metrics; } ;
struct TYPE_10__ {char* protocol; } ;
typedef TYPE_4__ GDashRender ;
typedef TYPE_5__ GDashModule ;
typedef TYPE_6__ GColors ;


 int COLOR_MTRC_PROT ;
 int COLOR_PAIR (int ) ;
 int DASH_SPACE ;
 int REQ_PROTO_LEN ;
 int color_selected ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 TYPE_6__* get_color_by_item_module (int ,int ) ;
 int mvwprintw (int *,int,int,char*,char*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_proto (GDashModule * data, GDashRender render, int *x)
{
  GColors *color = get_color_by_item_module (COLOR_MTRC_PROT, data->module);
  WINDOW *win = render.win;

  int y = render.y, w = render.w, idx = render.idx, sel = render.sel;
  char *protocol = data->data[idx].metrics->protocol;

  if (protocol == ((void*)0) || *protocol == '\0')
    return;

  if (sel) {

    draw_header (win, protocol, "%s", y, *x, w, color_selected);
  } else {

    wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
    mvwprintw (win, y, *x, "%s", protocol);
    wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
  }

  *x += REQ_PROTO_LEN - 1 + DASH_SPACE;
}
