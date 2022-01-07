
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int atr; } ;
struct TYPE_4__ {TYPE_1__ shadow; } ;


 int A_CHARTEXT ;
 TYPE_2__ dlg ;
 scalar_t__ has_colors () ;
 int waddch (int *,int) ;
 int wattrset (int *,int ) ;
 int winch (int *) ;
 int wmove (int *,int,int) ;
 int wnoutrefresh (int *) ;

void draw_shadow(WINDOW * win, int y, int x, int height, int width)
{
 int i;

 if (has_colors()) {
  wattrset(win, dlg.shadow.atr);
  wmove(win, y + height, x + 2);
  for (i = 0; i < width; i++)
   waddch(win, winch(win) & A_CHARTEXT);
  for (i = y + 1; i < y + height + 1; i++) {
   wmove(win, i, x + width);
   waddch(win, winch(win) & A_CHARTEXT);
   waddch(win, winch(win) & A_CHARTEXT);
  }
  wnoutrefresh(win);
 }
}
