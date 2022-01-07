
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int pos_y; int desc; } ;
typedef TYPE_1__ GDashModule ;


 int color_panel_desc ;
 int draw_header (int *,int ,char*,int,int ,int,int ) ;
 int getmaxyx (int *,int,int) ;

__attribute__((used)) static void
render_description (WINDOW * win, GDashModule * data, int *y)
{
  int w, h;

  getmaxyx (win, h, w);
  (void) h;

  draw_header (win, data->desc, " %s", (*y), 0, w, color_panel_desc);

  data->pos_y = (*y);
  (*y)++;
  (*y)++;
}
