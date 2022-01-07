
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-u<username>] [-l<log-name>] [-t<target-host>] [-p<target-port>] [-m<max-ad-id>]\n"
   "\t-v\toutput statistical and debug information into stderr\n",
   progname);
  exit(2);
}
