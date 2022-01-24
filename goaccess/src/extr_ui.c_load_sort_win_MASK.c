#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_13__ {int size; int selectable; int checked; int idx; struct TYPE_13__* items; struct TYPE_13__* name; } ;
struct TYPE_12__ {scalar_t__ field; scalar_t__ sort; } ;
struct TYPE_11__ {int /*<<< orphan*/  append_method; int /*<<< orphan*/  append_protocol; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  serve_usecs; } ;
typedef  scalar_t__ GSortField ;
typedef  TYPE_1__ GSort ;
typedef  size_t GModule ;
typedef  TYPE_2__ GMenu ;
typedef  TYPE_2__ GItem ;

/* Variables and functions */
#define  KEY_DOWN 131 
#define  KEY_ENTER 130 
#define  KEY_RESIZE 129 
#define  KEY_UP 128 
 int /*<<< orphan*/  MTRC_AVGTS_LBL ; 
 int /*<<< orphan*/  MTRC_BW_LBL ; 
 int /*<<< orphan*/  MTRC_CUMTS_LBL ; 
 int /*<<< orphan*/  MTRC_DATA_LBL ; 
 int /*<<< orphan*/  MTRC_HITS_LBL ; 
 int /*<<< orphan*/  MTRC_MAXTS_LBL ; 
 int /*<<< orphan*/  MTRC_METHODS_LBL ; 
 int /*<<< orphan*/  MTRC_PROTOCOLS_LBL ; 
 int /*<<< orphan*/  MTRC_VISITORS_LBL ; 
 int /*<<< orphan*/  REQ_DOWN ; 
 int /*<<< orphan*/  REQ_SEL ; 
 int /*<<< orphan*/  REQ_UP ; 
 int /*<<< orphan*/  SORTDLG_DESC ; 
 int /*<<< orphan*/  SORTDLG_HEAD ; 
 scalar_t__ SORT_ASC ; 
 int /*<<< orphan*/  SORT_ASC_SEL ; 
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
 int /*<<< orphan*/  SORT_DESC_SEL ; 
 int SORT_MAX_OPTS ; 
 int /*<<< orphan*/  SORT_MENU_H ; 
 int /*<<< orphan*/  SORT_MENU_W ; 
 int /*<<< orphan*/  SORT_MENU_X ; 
 int /*<<< orphan*/  SORT_MENU_Y ; 
 int SORT_WIN_H ; 
 int SORT_WIN_W ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  color_panel_header ; 
 TYPE_10__ conf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,char*,...) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int** sort_choices ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char,char,char,char,char,char,char,char) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int,int) ; 

void
FUNC17 (WINDOW * main_win, GModule module, GSort * sort)
{
  GMenu *menu;
  WINDOW *win;
  GSortField opts[SORT_MAX_OPTS];

  int c, quit = 1;
  int i = 0, k, n = 0;
  int y, x, h = SORT_WIN_H, w = SORT_WIN_W;
  int w2 = w - 2;

  FUNC4 (stdscr, y, x);

  /* determine amount of sort choices */
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

  win = FUNC9 (h, w, (y - h) / 2, (x - w) / 2);
  FUNC6 (win, TRUE);
  FUNC13 (win, '|', '|', '-', '-', '+', '+', '+', '+');

  /* create a new instance of GMenu and make it selectable */
  menu = FUNC8 (win, SORT_MENU_H, SORT_MENU_W, SORT_MENU_Y, SORT_MENU_X);
  menu->size = n;
  menu->selectable = 1;

  /* add items to GMenu */
  menu->items = (GItem *) FUNC16 (n, sizeof (GItem));

  /* set choices, checked option and index */
  for (i = 0; i < n; ++i) {
    GSortField field = sort_choices[module][opts[i]];
    if (SORT_BY_HITS == field) {
      menu->items[i].name = FUNC0 (MTRC_HITS_LBL);
      if (sort->field == SORT_BY_HITS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_VISITORS == field) {
      menu->items[i].name = FUNC0 (MTRC_VISITORS_LBL);
      if (sort->field == SORT_BY_VISITORS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_DATA == field) {
      menu->items[i].name = FUNC0 (MTRC_DATA_LBL);
      if (sort->field == SORT_BY_DATA) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_BW == field) {
      menu->items[i].name = FUNC0 (MTRC_BW_LBL);
      if (sort->field == SORT_BY_BW) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_AVGTS == field) {
      menu->items[i].name = FUNC0 (MTRC_AVGTS_LBL);
      if (sort->field == SORT_BY_AVGTS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_CUMTS == field) {
      menu->items[i].name = FUNC0 (MTRC_CUMTS_LBL);
      if (sort->field == SORT_BY_CUMTS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_MAXTS == field) {
      menu->items[i].name = FUNC0 (MTRC_MAXTS_LBL);
      if (sort->field == SORT_BY_MAXTS) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_PROT == field) {
      menu->items[i].name = FUNC0 (MTRC_PROTOCOLS_LBL);
      if (sort->field == SORT_BY_PROT) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    } else if (SORT_BY_MTHD == field) {
      menu->items[i].name = FUNC0 (MTRC_METHODS_LBL);
      if (sort->field == SORT_BY_MTHD) {
        menu->items[i].checked = 1;
        menu->idx = i;
      }
    }
  }
  FUNC10 (menu);

  FUNC2 (win, SORTDLG_HEAD, " %s", 1, 1, w2, color_panel_header);
  FUNC7 (win, 2, 2, SORTDLG_DESC);

  if (sort->sort == SORT_ASC)
    FUNC7 (win, SORT_WIN_H - 2, 1, " %s", SORT_ASC_SEL);
  else
    FUNC7 (win, SORT_WIN_H - 2, 1, " %s", SORT_DESC_SEL);

  FUNC15 (win);
  while (quit) {
    c = FUNC14 (stdscr);
    switch (c) {
    case KEY_DOWN:
      FUNC5 (menu, REQ_DOWN);
      break;
    case KEY_UP:
      FUNC5 (menu, REQ_UP);
      break;
    case 9:    /* TAB */
      if (sort->sort == SORT_ASC) {
        /* ascending */
        sort->sort = SORT_DESC;
        FUNC7 (win, SORT_WIN_H - 2, 1, " %s", SORT_DESC_SEL);
      } else {
        /* descending */
        sort->sort = SORT_ASC;
        FUNC7 (win, SORT_WIN_H - 2, 1, " %s", SORT_ASC_SEL);
      }
      break;
    case 32:
    case 0x0a:
    case 0x0d:
    case KEY_ENTER:
      FUNC5 (menu, REQ_SEL);
      for (i = 0; i < n; ++i) {
        if (menu->items[i].checked != 1)
          continue;
        if (FUNC11 ("Hits", menu->items[i].name) == 0)
          sort->field = SORT_BY_HITS;
        else if (FUNC11 ("Visitors", menu->items[i].name) == 0)
          sort->field = SORT_BY_VISITORS;
        else if (FUNC11 ("Data", menu->items[i].name) == 0)
          sort->field = SORT_BY_DATA;
        else if (FUNC11 ("Tx. Amount", menu->items[i].name) == 0)
          sort->field = SORT_BY_BW;
        else if (FUNC11 ("Avg. T.S.", menu->items[i].name) == 0)
          sort->field = SORT_BY_AVGTS;
        else if (FUNC11 ("Cum. T.S.", menu->items[i].name) == 0)
          sort->field = SORT_BY_CUMTS;
        else if (FUNC11 ("Max. T.S.", menu->items[i].name) == 0)
          sort->field = SORT_BY_MAXTS;
        else if (FUNC11 ("Protocol", menu->items[i].name) == 0)
          sort->field = SORT_BY_PROT;
        else if (FUNC11 ("Method", menu->items[i].name) == 0)
          sort->field = SORT_BY_MTHD;
        quit = 0;
        break;
      }
      break;
    case KEY_RESIZE:
    case 'q':
      quit = 0;
      break;
    }
    FUNC15 (win);
  }

  /* clean stuff up */
  for (i = 0; i < n; ++i)
    FUNC3 (menu->items[i].name);
  FUNC3 (menu->items);
  FUNC3 (menu);

  FUNC12 (main_win);
  FUNC1 (win);
  FUNC15 (main_win);
}