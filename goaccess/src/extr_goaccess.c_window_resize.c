
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endwin () ;
 int header_win ;
 int main_win ;
 int main_win_height ;
 int refresh () ;
 int render_screens () ;
 int stdscr ;
 int term_size (int ,int *) ;
 int werase (int ) ;

__attribute__((used)) static void
window_resize (void)
{
  endwin ();
  refresh ();
  werase (header_win);
  werase (main_win);
  werase (stdscr);
  term_size (main_win, &main_win_height);
  refresh ();
  render_screens ();
}
