
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void usage() {
  fprintf (stderr, "Debug utils: read news binlog and dumps logevents.\n");
  fprintf (stderr, "\t-p\tDumps log positions\n");
  fprintf (stderr, "\t-t\tDumps timestamps\n");
  fprintf (stderr, "\t-T[min_utime,max_utime]\tDump only part of binlog in given time interval.\n");
}
