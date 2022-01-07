
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage() {
  fprintf (stderr, "copyexec-binlog [-p] [-t] [-v] [-h] [-S<start-time>] [-T<end-time] <binlog>\n"
                   "\tConverts copyexec main binlog or copyexec results binlog into text format.\n"
                   "\t-p\tdump log pos\n"
                   "\t-t\tdump timestamp\n"
                   "\t-C\tdump CRC32\n"
                   "\t-S<start-time>\tsets start-time\n"
                   "\t-T<end-time>\tsets end-time\n");
  exit (2);
}
