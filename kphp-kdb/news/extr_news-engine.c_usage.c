
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
  printf ("usage: %s [-v] [-r] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] [-t<days>] [-C<cache-size>] [-L] [-R] <huge-index-file> [<metaindex-file>]\n"
    "%s\n"
    "\tPerforms news/updates/bookmarks queries using given indexes\n",
    progname, FullVersionStr);
  parse_usage ();
  exit (2);
}
