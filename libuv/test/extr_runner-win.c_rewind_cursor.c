
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_line () ;
 int fprintf (int ,char*) ;
 int stderr ;

void rewind_cursor() {
  if (clear_line() == -1) {

    fprintf(stderr, "\n");
  }
}
