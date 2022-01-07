
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage: %s [-u<username>] [-v] [-l<log-name>] <new-binlog> <old-binlog> %s\n"
    "Appends <old-binlog> so it will be identical to <new-binlog>.\n"
    "<new-binlog> should be generated with dns-engine via -E option.\n"
    , progname, FullVersionStr);
  exit (2);
}
