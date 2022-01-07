
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int WINDOW ;
struct TYPE_13__ {int size; int selectable; int checked; int idx; struct TYPE_13__* items; struct TYPE_13__* name; } ;
struct TYPE_12__ {scalar_t__ field; scalar_t__ sort; } ;
struct TYPE_11__ {int append_method; int append_protocol; int bandwidth; int serve_usecs; } ;
typedef scalar_t__ GSortField ;
typedef TYPE_1__ GSort ;
typedef size_t GModule ;
typedef TYPE_2__ GMenu ;
typedef TYPE_2__ GItem ;






 int MTRC_AVGTS_LBL ;
 int MTRC_BW_LBL ;
 int MTRC_CUMTS_LBL ;
 int MTRC_DATA_LBL ;
 int MTRC_HITS_LBL ;
 int MTRC_MAXTS_LBL ;
 int MTRC_METHODS_LBL ;
 int MTRC_PROTOCOLS_LBL ;
 int MTRC_VISITORS_LBL ;
 int REQ_DOWN ;
 int REQ_SEL ;
 int REQ_UP ;
 int SORTDLG_DESC ;
 int SORTDLG_HEAD ;
 scalar_t__ SORT_ASC ;
 int SORT_ASC_SEL ;
 scalar_t__ SORT_BY_AVGTS ;
 scalar_t__ SORT_BY_BW ;
 scalar_t__ SORT_BY_CUMTS ;
 scalar_t__ SORT_BY_DATA ;
 scalar_t__ SORT_BY_HITS ;
 scalar_t__ SORT_BY_MAXTS ;
 scalar_t__ SORT_BY_MTHD ;
 scalar_t__ SORT_BY_PROT ;
 scalar_t__ SORT_BY_VISITORS ;
 scalar_t__ SORT_DESC ;
 int SORT_DESC_SEL ;
 int SORT_MAX_OPTS ;
 int SORT_MENU_H ;
 int SORT_MENU_W ;
 int SORT_MENU_X ;
 int SORT_MENU_Y ;
 int SORT_WIN_H ;
 int SORT_WIN_W ;
 int TRUE ;
 void* alloc_string (int ) ;
 int close_win (int *) ;
 int color_panel_header ;
 TYPE_10__ conf ;
 int draw_header (int *,int ,char*,int,int,int,int ) ;
 int free (TYPE_2__*) ;
 int getmaxyx (int ,int,int) ;
 int gmenu_driver (TYPE_2__*,int ) ;
 int keypad (int *,int ) ;
 int mvwprintw (int *,int,int,char*,...) ;
 TYPE_2__* new_gmenu (int *,int ,int ,int ,int ) ;
 int * newwin (int,int,int,int) ;
 int post_gmenu (TYPE_2__*) ;
 int** sort_choices ;
 int stdscr ;
 int strcmp (char*,TYPE_2__*) ;
 int touchwin (int *) ;
 int wborder (int *,char,char,char,char,char,char,char,char) ;
 int wgetch (int ) ;
 int wrefresh (int *) ;
 scalar_t__ xcalloc (int,int) ;

void
load_sort_win (WINDOW * main_win, GModule module, GSort * sort)
{
  GMenu *menu;
  WINDOW *win;
  GSortField opts[SORT_MAX_OPTS];

  int c, quit = 1;
  int i = 0, k, n = 0;
  int y, x, h = SORT_WIN_H, w = SORT_WIN_W;
  int w2 = w - 2;

  getmaxyx (stdscr, y, x);


  for (i = 0, k = 0; -1 != sort_choices[module][i]; i++) {
    GSortField field = sort_choices[module][i];
    if (SORT_BY_CUMTS == field && !conf.serve_usecs)
      continue;
    else if (SORT_BY_MAXTS == field && !conf.serve_usecs)
      continue;
    else if (SORT_BY_AVGTS == field && !conf.serve_usecs)
      continue;
    else if (SORT_BY_BW == field && !conf.bandwidth)
      continue;
    else if (SORT_BY_PROT == field && !conf.append_protocol)
      continue;
    else if (SORT_BY_MTHD == field && !conf.append_method)
      continue;
    opts[k++] = field;
    n++;
  }

  win = newwin (h, w, (y - h) / 2, (x - w) / 2);
  keypad (win, TRUE);
  wborder (win, '|', '|', '-', '-', '+', '+', '+', '+');


  menu = new_gmenu (win, SORT_MENU_H, SORT_MENU_W, SORT_MENU_Y, SORT_MENU_X);
  menu->size = n;
  menu->selectable = 1;


  menu->items = (GItem *) xcalloc (n, sizeof (GItem));


  for (i = 0; i < n; ++i) {
    GSortField field = sort_choices[module][opts[i]];
    if (SORT_BY_HITS == field) {
      menu->items[i].name = alloc_string (MTRC_HITS_LBL);
      if (sort->field == SORT_BY_HITS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_VISITORS == field) {
      menu->items[i].name = alloc_string (MTRC_VISITORS_LBL);
      if (sort->field == SORT_BY_VISITORS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_DATA == field) {
      menu->items[i].name = alloc_string (MTRC_DATA_LBL);
      if (sort->field == SORT_BY_DATA) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_BW == field) {
      menu->items[i].name = alloc_string (MTRC_BW_LBL);
      if (sort->field == SORT_BY_BW) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_AVGTS == field) {
      menu->items[i].name = alloc_string (MTRC_AVGTS_LBL);
      if (sort->field == SORT_BY_AVGTS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_CUMTS == field) {
      menu->items[i].name = alloc_string (MTRC_CUMTS_LBL);
      if (sort->field == SORT_BY_CUMTS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_MAXTS == field) {
      menu->items[i].name = alloc_string (MTRC_MAXTS_LBL);
      if (sort->field == SORT_BY_MAXTS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_PROT == field) {
      menu->items[i].name = alloc_string (MTRC_PROTOCOLS_LBL);
      if (sort->field == SORT_BY_PROT) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_MTHD == field) {
      menu->items[i].name = alloc_string (MTRC_METHODS_LBL);
      if (sort->field == SORT_BY_MTHD) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    }
  }
  post_gmenu (menu);

  draw_header (win, SORTDLG_HEAD, " %s", 1, 1, w2, color_panel_header);
  mvwprintw (win, 2, 2, SORTDLG_DESC);

  if (sort->sort == SORT_ASC)
    mvwprintw (win, SORT_WIN_H - 2, 1, " %s", SORT_ASC_SEL);
  else
    mvwprintw (win, SORT_WIN_H - 2, 1, " %s", SORT_DESC_SEL);

  wrefresh (win);
  while (quit) {
    c = wgetch (stdscr);
    switch (c) {
    case 131:
      gmenu_driver (menu, REQ_DOWN);
      break;
    case 128:
      gmenu_driver (menu, REQ_UP);
      break;
    case 9:
      if (sort->sort == SORT_ASC) {

        sort->sort = SORT_DESC;
        mvwprintw (win, SORT_WIN_H - 2, 1, " %s", SORT_DESC_SEL);
      } else {

        sort->sort = SORT_ASC;
        mvwprintw (win, SORT_WIN_H - 2, 1, " %s", SORT_ASC_SEL);
      }
      break;
    case 32:
    case 0x0a:
    case 0x0d:
    case 130:
      gmenu_driver (menu, REQ_SEL);
      for (i = 0; i < n; ++i) {
        if (menu->items[i].checked != 1)
          continue;
        if (strcmp ("Hits", menu->items[i].name) == 0)
          sort->field = SORT_BY_HITS;
        else if (strcmp ("Visitors", menu->items[i].name) == 0)
          sort->field = SORT_BY_VISITORS;
        else if (strcmp ("Data", menu->items[i].name) == 0)
          sort->field = SORT_BY_DATA;
        else if (strcmp ("Tx. Amount", menu->items[i].name) == 0)
          sort->field = SORT_BY_BW;
        else if (strcmp ("Avg. T.S.", menu->items[i].name) == 0)
          sort->field = SORT_BY_AVGTS;
        else if (strcmp ("Cum. T.S.", menu->items[i].name) == 0)
          sort->field = SORT_BY_CUMTS;
        else if (strcmp ("Max. T.S.", menu->items[i].name) == 0)
          sort->field = SORT_BY_MAXTS;
        else if (strcmp ("Protocol", menu->items[i].name) == 0)
          sort->field = SORT_BY_PROT;
        else if (strcmp ("Method", menu->items[i].name) == 0)
          sort->field = SORT_BY_MTHD;
        quit = 0;
        break;
      }
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
