
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_child_status () ;
 int create_all_outbound_connections () ;
 int flush_binlog () ;
 scalar_t__ force_write_index ;
 int fork_write_index () ;
 int free_by_time (int) ;
 int last_reindex_on_low_memory_time ;
 scalar_t__ memory_full_warning () ;
 int now ;
 int redistribute_memory () ;
 int reindex_on_low_memory ;

void cron (void) {
  create_all_outbound_connections ();
  flush_binlog ();
  free_by_time (137);
  redistribute_memory ();
  if (!reindex_on_low_memory && memory_full_warning ()) {
    force_write_index ++;
    reindex_on_low_memory ++;
    last_reindex_on_low_memory_time = now;
  }
  if (force_write_index) {
    fork_write_index ();
  }
  check_child_status();
}
