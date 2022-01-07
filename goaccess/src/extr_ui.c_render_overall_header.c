
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int GHolder ;


 int color_panel_header ;
 int draw_header (int *,char*,char*,int ,int ,int,int ) ;
 int free (char*) ;
 char* get_overall_header (int *) ;
 int getmaxx (int ) ;
 int stdscr ;

__attribute__((used)) static void
render_overall_header (WINDOW * win, GHolder * h)
{
  char *hd = get_overall_header (h);
  int col = getmaxx (stdscr);

  draw_header (win, hd, " %s", 0, 0, col, color_panel_header);
  free (hd);
}
