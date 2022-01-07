
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int parse_usage () ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("%s\n", FullVersionStr);
  printf ("usage: %s [-v] [-r] [-i] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] [-A] <huge-index-file> [<metaindex-file>]\n"
   "\tPerforms friends and privacy queries using given indexes\n",
   progname);
  parse_usage ();
  exit (2);
}
