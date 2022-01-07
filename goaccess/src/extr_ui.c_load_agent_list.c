
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_9__ {int list_agents; } ;
struct TYPE_8__ {int size; struct TYPE_8__* items; struct TYPE_8__* name; } ;
typedef TYPE_1__ GMenu ;


 int AGENTSDLG_DESC ;
 char* AGENTSDLG_HEAD ;
 int AGENTS_MENU_X ;
 int AGENTS_MENU_Y ;



 int REQ_DOWN ;
 int REQ_UP ;
 int TRUE ;
 int close_win (int *) ;
 int color_panel_header ;
 TYPE_7__ conf ;
 int draw_header (int *,char*,char*,int,int,int,int ) ;
 int free (TYPE_1__*) ;
 int getmaxyx (int ,int,int) ;
 int gmenu_driver (TYPE_1__*,int ) ;
 int keypad (int *,int ) ;
 int load_host_agents_gmenu ;
 int mvwprintw (int *,int,int,int ) ;
 TYPE_1__* new_gmenu (int *,int,int,int,int) ;
 int * newwin (int,int,int,int) ;
 int post_gmenu (TYPE_1__*) ;
 int set_host_agents (char*,int ,TYPE_1__*) ;
 int snprintf (char*,int,char*,char*) ;
 int stdscr ;
 int touchwin (int *) ;
 int wborder (int *,char,char,char,char,char,char,char,char) ;
 int wgetch (int ) ;
 int wrefresh (int *) ;

void
load_agent_list (WINDOW * main_win, char *addr)
{
  GMenu *menu;
  WINDOW *win;

  char buf[256];
  int c, quit = 1, i;
  int y, x, list_h, list_w, menu_w, menu_h;

  if (!conf.list_agents)
    return;

  getmaxyx (stdscr, y, x);
  list_h = y / 2;
  list_w = x - 4;
  menu_h = list_h - AGENTS_MENU_Y - 1;
  menu_w = list_w - AGENTS_MENU_X - AGENTS_MENU_X;

  win = newwin (list_h, list_w, (y - list_h) / 2, (x - list_w) / 2);
  keypad (win, TRUE);
  wborder (win, '|', '|', '-', '-', '+', '+', '+', '+');


  menu = new_gmenu (win, menu_h, menu_w, AGENTS_MENU_Y, AGENTS_MENU_X);
  if (set_host_agents (addr, load_host_agents_gmenu, menu) == 1)
    goto out;

  post_gmenu (menu);
  snprintf (buf, sizeof buf, AGENTSDLG_HEAD, addr);
  draw_header (win, buf, " %s", 1, 1, list_w - 2, color_panel_header);
  mvwprintw (win, 2, 2, AGENTSDLG_DESC);
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

  touchwin (main_win);
  close_win (win);
  wrefresh (main_win);

out:


  for (i = 0; i < menu->size; ++i)
    free (menu->items[i].name);
  if (menu->items)
    free (menu->items);
  free (menu);
}
