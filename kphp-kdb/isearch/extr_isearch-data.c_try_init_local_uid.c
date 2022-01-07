
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISEARCH_SCHEMA_V1 ;
 int assert (int) ;
 int init_isearch_data (int ) ;
 int log_schema ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;

void try_init_local_uid (void) {
  static int was = 0;
  static int old_log_split_min, old_log_split_max, old_log_split_mod;

  if (was) {

    assert (old_log_split_min == log_split_min && old_log_split_max == log_split_max && old_log_split_mod == log_split_mod);
    return;
  }

  was = 1;
  old_log_split_min = log_split_min;
  old_log_split_max = log_split_max;
  old_log_split_mod = log_split_mod;

  log_schema = ISEARCH_SCHEMA_V1;
  init_isearch_data (log_schema);
}
