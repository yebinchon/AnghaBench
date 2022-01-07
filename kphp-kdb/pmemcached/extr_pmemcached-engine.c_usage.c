
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int parse_usage () ;
 int printf (char*,char*) ;

void usage (void) {
  printf ("%s\n",
          FullVersionStr
         );
  parse_usage ();
  exit (2);
}
