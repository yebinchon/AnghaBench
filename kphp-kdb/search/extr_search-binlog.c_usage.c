
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void usage() {
  fprintf (stderr, "Debug utils: read search binlog and dumps logevents.\n");
  fprintf (stderr, "Dumps: only delete item event.\n");
}
