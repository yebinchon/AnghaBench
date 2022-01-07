
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int w; int y; } ;
typedef TYPE_1__ GDashRender ;


 int color_selected ;
 int draw_header (int *,char*,char*,int ,int ,int ,int ) ;
 int free (char*) ;
 char* left_pad_str (char*,int) ;

__attribute__((used)) static void
render_data_hosts (WINDOW * win, GDashRender render, char *value, int x)
{
  char *padded_data;

  padded_data = left_pad_str (value, x);
  draw_header (win, padded_data, "%s", render.y, 0, render.w, color_selected);
  free (padded_data);
}
