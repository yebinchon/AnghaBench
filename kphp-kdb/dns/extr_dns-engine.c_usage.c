
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int parse_usage () ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage: %s [-u<username>] [-v] [-p<listen-port>] [-P<stats-port>] [-d] [-6] [-l<log-name>] <config>\n%s\n"
    "DNS server\n"
    , progname, FullVersionStr);
  parse_usage ();
  exit (2);
}
