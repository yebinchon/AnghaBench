
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage() {
  fprintf (stderr,
    "cache-binlog [-p] [-t] [-v] <cache-binlog>\n"
    "\tRead cache binlog and dumps logevents.\n"
    "\t-F<filtered-uri-hex-md5>\tsets global URI's md5 which will be dumped\n"
    "\t-p\tdump log pos\n"
    "\t-t\tdump timestamp\n"
  );
  exit (2);
}
