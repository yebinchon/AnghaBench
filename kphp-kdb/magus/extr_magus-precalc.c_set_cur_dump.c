
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int dl_close_file (size_t) ;
 scalar_t__ dl_open_file (size_t,int ,int) ;
 size_t dump_fd ;
 int dump_name ;
 int dump_type ;
 int engine_n ;
 int* fd ;
 int fprintf (int ,char*,int) ;
 int snprintf (int ,int,char*,int,int) ;
 int stderr ;
 scalar_t__ verbosity ;

int set_cur_dump (int dump_id) {
  assert (0 <= dump_id && dump_id < engine_n);

  if (fd[dump_fd] != -1 && dump_id) {
    dl_close_file (dump_fd);
  }

  int cur_dump = dump_id;

  if (verbosity > 0) {
    fprintf (stderr, "\nSwitching to dump %d\n", cur_dump);
  }

  snprintf (dump_name, 100, "dump%03d.%d", cur_dump, dump_type);
  return dl_open_file (dump_fd, dump_name, -1) >= 0;
}
