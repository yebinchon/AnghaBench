
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
  fprintf (stderr, "usage: %s [-u<username>] [-v] [-d] [-6] [-l<log-name>] (<dir> | <input> <output>)\n%s\n"
    "Trivial file transfer protocol tool.\n"
    "If <dir> is given then tool works as server.\n"
    "Otherwise tool works as client.\n"
    , progname, FullVersionStr);
  parse_usage ();
  exit (2);
}
