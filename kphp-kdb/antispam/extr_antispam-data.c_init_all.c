
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_file_handle_t ;


 int CLOCK_MONOTONIC ;
 int antispam_init () ;
 char* engine_snapshot_name ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int get_utime (int ) ;
 int index_load_time ;
 int init_dyn_data () ;
 int jump_log_pos ;
 int load_index (int ) ;
 int stderr ;
 scalar_t__ verbosity ;

void init_all (kfs_file_handle_t Index) {
  index_load_time = -get_utime (CLOCK_MONOTONIC);
  bool index_loaded = load_index (Index);
  index_load_time += get_utime (CLOCK_MONOTONIC);

  if (!index_loaded) {
    fprintf (stderr, "fatal: error while loading index file %s\n", engine_snapshot_name);
    exit (1);
  }

  if (verbosity > 0) {
    fprintf (stderr, "load index: done, jump_log_pos=%lld, time %.06lfs\n", jump_log_pos, index_load_time);
  }


  init_dyn_data();

  antispam_init();
}
