
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] <members-fname-1> [<members-fname-2> ...]\n"
   "\tResulting hash list file is written to stdout\n"
   "\t-v\toutput statistical information into stderr\n",
   progname);
  exit(2);
}
