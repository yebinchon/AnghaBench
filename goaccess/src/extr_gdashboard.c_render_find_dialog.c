
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_2__ {int pattern; scalar_t__ icase; } ;
typedef int GScroll ;


 int FIND_DESC ;
 int FIND_DLG_HEIGHT ;
 int FIND_DLG_WIDTH ;
 int FIND_HEAD ;
 int TRUE ;
 int close_win (int *) ;
 int color_panel_header ;
 int draw_header (int *,int ,char*,int,int,int,int ) ;
 TYPE_1__ find_t ;
 int free (char*) ;
 int getmaxyx (int ,int,int) ;
 char* input_string (int *,int,int,int,char*,int,scalar_t__*) ;
 int keypad (int *,int ) ;
 int mvwprintw (int *,int,int,char*,int ) ;
 int * newwin (int,int,int,int) ;
 int reset_find () ;
 int reset_scroll_offsets (int *) ;
 int stdscr ;
 int touchwin (int *) ;
 int wborder (int *,char,char,char,char,char,char,char,char) ;
 int wrefresh (int *) ;
 int xstrdup (char*) ;

int
render_find_dialog (WINDOW * main_win, GScroll * gscroll)
{
  int y, x, valid = 1;
  int w = FIND_DLG_WIDTH;
  int h = FIND_DLG_HEIGHT;
  char *query = ((void*)0);
  WINDOW *win;

  getmaxyx (stdscr, y, x);

  win = newwin (h, w, (y - h) / 2, (x - w) / 2);
  keypad (win, TRUE);
  wborder (win, '|', '|', '-', '-', '+', '+', '+', '+');
  draw_header (win, FIND_HEAD, " %s", 1, 1, w - 2, color_panel_header);
  mvwprintw (win, 2, 1, " %s", FIND_DESC);

  find_t.icase = 0;
  query = input_string (win, 4, 2, w - 3, "", 1, &find_t.icase);
  if (query != ((void*)0) && *query != '\0') {
    reset_scroll_offsets (gscroll);
    reset_find ();
    find_t.pattern = xstrdup (query);
    valid = 0;
  }
  if (query != ((void*)0))
    free (query);
  touchwin (main_win);
  close_win (win);
  wrefresh (main_win);

  return valid;
}
