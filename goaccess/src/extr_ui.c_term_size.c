
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int MAX_HEIGHT_FOOTER ;
 int MAX_HEIGHT_HEADER ;
 int getmaxyx (int ,int,int) ;
 int stdscr ;
 int wmove (int *,int,int ) ;
 int wresize (int *,int,int) ;

void
term_size (WINDOW * main_win, int *main_win_height)
{
  int term_h = 0, term_w = 0;

  getmaxyx (stdscr, term_h, term_w);

  *main_win_height = term_h - (MAX_HEIGHT_HEADER + MAX_HEIGHT_FOOTER);
  wresize (main_win, *main_win_height, term_w);
  wmove (main_win, *main_win_height, 0);
}
