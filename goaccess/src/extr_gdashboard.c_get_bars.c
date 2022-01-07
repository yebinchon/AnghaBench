
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* char_repeat (float,char) ;
 int getmaxyx (int ,int,int) ;
 int stdscr ;

__attribute__((used)) static char *
get_bars (int n, int max, int x)
{
  int w, h;
  float len = 0.0;

  getmaxyx (stdscr, h, w);
  (void) h;

  len = ((((float) n) / max));
  len *= (w - x);
  if (len < 1)
    len = 1;
  return char_repeat (len, '|');
}
