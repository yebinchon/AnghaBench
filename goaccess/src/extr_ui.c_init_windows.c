
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int FATAL (char*) ;
 int MIN_HEIGHT ;
 int MIN_WIDTH ;
 int TRUE ;
 int getmaxyx (int ,int,int) ;
 int keypad (int *,int ) ;
 int * newwin (int,int,int,int ) ;
 int set_wbkgd (int *,int *) ;
 int stdscr ;

void
init_windows (WINDOW ** header_win, WINDOW ** main_win)
{
  int row = 0, col = 0;


  getmaxyx (stdscr, row, col);
  if (row < MIN_HEIGHT || col < MIN_WIDTH)
    FATAL ("Minimum screen size - 0 columns by 7 lines");


  *header_win = newwin (6, col, 0, 0);
  keypad (*header_win, TRUE);
  if (*header_win == ((void*)0))
    FATAL ("Unable to allocate memory for header_win.");


  *main_win = newwin (row - 8, col, 7, 0);
  keypad (*main_win, TRUE);
  if (*main_win == ((void*)0))
    FATAL ("Unable to allocate memory for main_win.");
  set_wbkgd (*main_win, *header_win);
}
