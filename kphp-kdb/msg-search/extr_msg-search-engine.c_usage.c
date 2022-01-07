
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-i] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] <huge-index-file> [<metaindex-file>]\n"
   "\tPerforms search queries using given indexes\n"
   "\tIf <metaindex-file> is not specified, <huge-index-file>.idx is used\n"
   "\t-v\toutput statistical and debug information into stderr\n"
   "\t-i\twork interactively\n",
   progname);
  exit(2);
}
