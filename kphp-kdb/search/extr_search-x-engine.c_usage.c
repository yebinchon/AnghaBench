
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int printf (char*,char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-r] [-i] [-t] [-A] [-S] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] <huge-index-file> [<metaindex-file>]\n"
      "\t%s\n"
      "\tPerforms search queries using given indexes\n"
      "\tIf <metaindex-file> is not specified, <huge-index-file>.idx is used\n"
      "\t-v\toutput statistical and debug information into stderr\n"
      "\t-r\tread-only binlog (don't log new events)\n"
      "\t-t\tenable tags (*word @word #word are considered words)\n"
      "\t-A\tenable universal tag\n"
      "\t-S\tuse stemmer\n"
      "\t-U\tenable UTF-8\n"
      "\t-T\ttest mode (don't increase rlimits, don't daemonize)\n",
      progname,
      FullVersionStr
      );
  exit(2);
}
