
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int parse_usage () ;
 int printf (char*,char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-r] [-i] [-T] [-y] [-x] [-d] [-D] [-E] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] [-M<memory-to-index>] [-t] <binlog>\n"
   "\t%s\n"
    "\tPerforms statistical queries using given indexes\n",
   progname,
    FullVersionStr);
  parse_usage ();
  exit (2);
}
