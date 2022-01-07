
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,...) ;

void usage (void) {
  printf ("%s\n", FullVersionStr);
  printf ("usage: icpl [-v] [-h] [program-file]\n"
      "\tICPL compiler\n"
      "\t-v\toutput statistical and debug information into stderr\n");
  exit (2);
}
