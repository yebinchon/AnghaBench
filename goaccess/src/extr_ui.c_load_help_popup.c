
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_8__ {size_t size; struct TYPE_8__* items; struct TYPE_8__* name; scalar_t__ checked; } ;
typedef TYPE_1__ GMenu ;
typedef TYPE_1__ GItem ;


 size_t ARRAY_SIZE (int *) ;
 int HELPDLG_DESC ;
 int HELPDLG_HEAD ;
 int HELP_MENU_HEIGHT ;
 int HELP_MENU_WIDTH ;
 int HELP_MENU_X ;
 int HELP_MENU_Y ;
 int HELP_WIN_HEIGHT ;
 int HELP_WIN_WIDTH ;



 int REQ_DOWN ;
 int REQ_UP ;
 int TRUE ;
 TYPE_1__* alloc_string (int ) ;
 int close_win (int *) ;
 int color_panel_header ;
 int draw_header (int *,int ,char*,int,int,int,int ) ;
 int free (TYPE_1__*) ;
 int getmaxyx (int ,int,int) ;
 int gmenu_driver (TYPE_1__*,int ) ;
 int * help_main ;
 int keypad (int *,int ) ;
 int mvwprintw (int *,int,int,int ) ;
 TYPE_1__* new_gmenu (int *,int ,int ,int ,int ) ;
 int * newwin (int,int,int,int) ;
 int post_gmenu (TYPE_1__*) ;
 int stdscr ;
 int touchwin (int *) ;
 int wborder (int *,char,char,char,char,char,char,char,char) ;
 int wgetch (int ) ;
 int wrefresh (int *) ;
 scalar_t__ xcalloc (size_t,int) ;

void
load_help_popup (WINDOW * main_win)
{
  int c, quit = 1;
  size_t i, n;
  int y, x, h = HELP_WIN_HEIGHT, w = HELP_WIN_WIDTH;
  int w2 = w - 2;
  WINDOW *win;
  GMenu *menu;

  n = ARRAY_SIZE (help_main);
  getmaxyx (stdscr, y, x);

  win = newwin (h, w, (y - h) / 2, (x - w) / 2);
  keypad (win, TRUE);
  wborder (win, '|', '|', '-', '-', '+', '+', '+', '+');


  menu =
    new_gmenu (win, HELP_MENU_HEIGHT, HELP_MENU_WIDTH, HELP_MENU_Y,
               HELP_MENU_X);
  menu->size = n;


  menu->items = (GItem *) xcalloc (n, sizeof (GItem));
  for (i = 0; i < n; ++i) {
    menu->items[i].name = alloc_string (help_main[i]);
    menu->items[i].checked = 0;
  }
  post_gmenu (menu);

  draw_header (win, HELPDLG_HEAD, " %s", 1, 1, w2, color_panel_header);
  mvwprintw (win, 2, 2, HELPDLG_DESC);

  wrefresh (win);
  while (quit) {
    c = wgetch (stdscr);
    switch (c) {
    case 130:
      gmenu_driver (menu, REQ_DOWN);
      break;
    case 128:
      gmenu_driver (menu, REQ_UP);
      break;
    case 129:
    case 'q':
      quit = 0;
      break;
    }
    wrefresh (win);
  }

  for (i = 0; i < n; ++i)
    free (menu->items[i].name);
  free (menu->items);
  free (menu);

  touchwin (main_win);
  close_win (win);
  wrefresh (main_win);
}
