
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curs_set (int) ;
 int endwin () ;

void CRT_done() {
   curs_set(1);
   endwin();
}
