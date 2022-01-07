
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "%s\n", FullVersionStr);
  fprintf (stderr, "./filesys-commit-changes [-v] [-t] [-T<temp-dir>] [-P] <master-dir> <new-dir> <binlog>\n"
                   "\t-0\tno gzip compression\n"
                   "\t-9\thighest gzip compression level\n"
                   "\t-P\tdisable diff/patch\n"
                   "\t-v\tincrease verbosity level\n"
                   "\t-t\tonly show diff, nothing append to binlog\n"
                   "\t-C\tuse cloning for synchronization master-dir (slower, but safer)\n"
                   "\t-T<temp-dir>\tshould be in the same filesystem as <master-dir>, by default is equal to <master-dir>/..\n"
                   "\t-U\tunlink previous fake snapshot\n"
         );
  exit (2);
}
