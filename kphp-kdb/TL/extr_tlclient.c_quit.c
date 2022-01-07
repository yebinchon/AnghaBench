
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup () ;
 int exit (int ) ;

int quit (char *s) {
  cleanup ();
  exit (0);
}
