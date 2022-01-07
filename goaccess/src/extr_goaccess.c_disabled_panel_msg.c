
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int ERR_PANEL_DISABLED ;
 int color_error ;
 int draw_header (int ,char const*,int ,int,int ,int,int ) ;
 int getmaxyx (int ,int,int) ;
 char* module_to_label (int ) ;
 int stdscr ;

__attribute__((used)) static void
disabled_panel_msg (GModule module)
{
  const char *lbl = module_to_label (module);
  int row, col;

  getmaxyx (stdscr, row, col);
  draw_header (stdscr, lbl, ERR_PANEL_DISABLED, row - 1, 0, col, color_error);
}
