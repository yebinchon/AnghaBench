
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_8__ {int attr; TYPE_1__* pair; } ;
struct TYPE_7__ {int y; int w; int sel; int * win; } ;
struct TYPE_6__ {int idx; } ;
typedef TYPE_2__ GDashRender ;
typedef TYPE_3__ GColors ;


 int COLOR_PAIR (int ) ;
 int color_selected ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 char* float2str (float,int) ;
 int free (char*) ;
 int mvwprintw (int *,int,int,char*,int,float) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;

__attribute__((used)) static void
render_percent (GDashRender render, GColors * color, float perc, int len, int x)
{
  WINDOW *win = render.win;
  char *percent;
  int y = render.y, w = render.w, sel = render.sel;

  if (sel) {

    percent = float2str (perc, len);
    draw_header (win, percent, "%s%%", y, x, w, color_selected);
    free (percent);
  } else {

    wattron (win, color->attr | COLOR_PAIR (color->pair->idx));
    mvwprintw (win, y, x, "%*.2f%%", len, perc);
    wattroff (win, color->attr | COLOR_PAIR (color->pair->idx));
  }
}
