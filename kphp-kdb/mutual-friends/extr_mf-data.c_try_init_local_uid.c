
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_3__ {int id; } ;


 int MF_SCHEMA_V1 ;
 int assert (int) ;
 TYPE_2__ header ;
 int init_mf_data (int ) ;
 int local_uid (int ) ;
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

  int i;
  for (i = 1; i <= header.user_cnt; i++) {
    local_uid (header.user_index[i].id);
  }

  was = 1;
  old_log_split_min = log_split_min;
  old_log_split_max = log_split_max;
  old_log_split_mod = log_split_mod;

  log_schema = MF_SCHEMA_V1;
  init_mf_data (log_schema);
}
