
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage() {
  fprintf (stderr, "Debug utils: read stats binlog and dumps events for given counter.\n");
  fprintf (stderr, "\t-c [counter_id]\tDumps only logevent for given counter.\n");
  fprintf (stderr, "\t-l\tGenerate list of all used counters\n");
  fprintf (stderr, "\t-u\tGenerate list of active users (finding bots)\n");
  fprintf (stderr, "\t-S<start time>\n");
  fprintf (stderr, "\t-T<end time>\n");
  fprintf (stderr, "\t-i\tuse recent snapshot (for the case when first binlog was deleted)\n");
  exit (2);
}
