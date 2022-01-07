
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* database_dump_prefix ;
 int dl_close_file (size_t) ;
 int dl_get_memory_used () ;
 scalar_t__ dl_open_file (size_t,int ,int) ;
 size_t dump_fd ;
 int dump_name ;
 int engine_n ;
 int* fd ;
 int fprintf (int ,char*,int,int ) ;
 int snprintf (int ,int,char*,char*,int) ;
 int stderr ;
 scalar_t__ verbosity ;

int set_cur_database_dump (int dump_id) {
  assert (0 <= dump_id && dump_id < engine_n && database_dump_prefix != ((void*)0));

  if (fd[dump_fd] != -1) {
    dl_close_file (dump_fd);
  }

  int cur_dump = dump_id;

  if (verbosity > 0) {
    fprintf (stderr, "\nSwitching to database dump %d, memory_used = %lld\n", cur_dump, dl_get_memory_used());
  }

  snprintf (dump_name, 100, "%s%03d.dump", database_dump_prefix, cur_dump);
  return dl_open_file (dump_fd, dump_name, -1) >= 0;
}
