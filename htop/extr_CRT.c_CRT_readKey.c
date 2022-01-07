
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRT_delay ;
 int FALSE ;
 int cbreak () ;
 int getch () ;
 int halfdelay (int ) ;
 int nocbreak () ;
 int nodelay (int ,int ) ;
 int stdscr ;

int CRT_readKey() {
   nocbreak();
   cbreak();
   nodelay(stdscr, FALSE);
   int ret = getch();
   halfdelay(CRT_delay);
   return ret;
}
