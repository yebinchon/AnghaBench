
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_timestamp ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int max_timestamp ;
 int max_utime ;
 int min_timestamp ;
 int stderr ;
 int verbosity ;

void update_timestamp (int timestamp) {
  cur_timestamp = timestamp;

  if (timestamp - 360 > max_utime) {
    if (verbosity >= 3) fprintf(stderr, "skiping binlog's tail\n");
    exit(0);
  }

  if (min_timestamp > cur_timestamp) min_timestamp = cur_timestamp;
  if (max_timestamp < cur_timestamp) max_timestamp = cur_timestamp;
}
