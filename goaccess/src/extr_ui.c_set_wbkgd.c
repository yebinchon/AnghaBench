
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {TYPE_1__* pair; } ;
struct TYPE_4__ {int idx; } ;
typedef TYPE_2__ GColors ;


 int COLOR_BG ;
 int COLOR_PAIR (int ) ;
 TYPE_2__* get_color (int ) ;
 int * stdscr ;
 int wbkgd (int *,int ) ;
 int wrefresh (int *) ;

void
set_wbkgd (WINDOW * main_win, WINDOW * header_win)
{
  GColors *color = get_color (COLOR_BG);


  wbkgd (main_win, COLOR_PAIR (color->pair->idx));
  wbkgd (header_win, COLOR_PAIR (color->pair->idx));
  wbkgd (stdscr, COLOR_PAIR (color->pair->idx));
  wrefresh (main_win);
}
