
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curses; int w; int spin_x; int y; int x; int win; int color; } ;
typedef TYPE_1__ GSpinner ;


 int color_progress ;
 int getmaxyx (int ,int,int) ;
 int stdscr ;

void
set_curses_spinner (GSpinner * spinner)
{
  int y, x;
  if (spinner == ((void*)0))
    return;

  getmaxyx (stdscr, y, x);

  spinner->color = color_progress;
  spinner->curses = 1;
  spinner->win = stdscr;
  spinner->x = 0;
  spinner->w = x;
  spinner->spin_x = x - 2;
  spinner->y = y - 1;
}
