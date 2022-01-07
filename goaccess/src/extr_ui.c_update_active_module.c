
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {int attr; TYPE_1__* pair; } ;
struct TYPE_4__ {int idx; } ;
typedef int GModule ;
typedef TYPE_2__ GColors ;


 int COLOR_ACTIVE_LABEL ;
 int COLOR_PAIR (int ) ;
 char* T_ACTIVE_PANEL ;
 int free (char*) ;
 TYPE_2__* get_color (int ) ;
 int getmaxx (int ) ;
 char* module_to_label (int ) ;
 int mvwprintw (int *,int ,int,char*,char*) ;
 scalar_t__ snprintf (int *,int ,char*,char const*) ;
 int sprintf (char*,char*,char const*) ;
 int stdscr ;
 int strlen (char*) ;
 int wattroff (int *,int) ;
 int wattron (int *,int) ;
 int wmove (int *,int ,int) ;
 int wrefresh (int *) ;
 char* xmalloc (scalar_t__) ;

void
update_active_module (WINDOW * header_win, GModule current)
{
  GColors *color = get_color (COLOR_ACTIVE_LABEL);
  const char *module = module_to_label (current);
  int col = getmaxx (stdscr);

  char *lbl = xmalloc (snprintf (((void*)0), 0, T_ACTIVE_PANEL, module) + 1);
  sprintf (lbl, T_ACTIVE_PANEL, module);

  wmove (header_win, 0, 30);

  wattron (header_win, color->attr | COLOR_PAIR (color->pair->idx));
  mvwprintw (header_win, 0, col - strlen (lbl) - 1, "%s", lbl);
  wattroff (header_win, color->attr | COLOR_PAIR (color->pair->idx));

  wrefresh (header_win);

  free (lbl);
}
