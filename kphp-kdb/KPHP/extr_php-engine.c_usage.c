
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;
 char* progname ;
 int usage_default_desc () ;
 int usage_default_info () ;
 int usage_default_params () ;
 int usage_desc () ;
 int usage_params () ;

void usage (void) {
  printf ("usage: %s ", progname);

  usage_default_params();
  printf (" ");
  usage_params();

  printf ("\n");

  usage_default_info();

  usage_default_desc();
  usage_desc();

  exit (2);
}
