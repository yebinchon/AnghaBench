
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-u] first.dump second.dump\n"
    "Generates XOR of two dumps. Writes result into stdout.\n",
   progname);
  exit (2);
}
