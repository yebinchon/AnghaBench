
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ user_id; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__* User ;
 TYPE_1__** UserDirectory ;
 int assert (int) ;
 int cur_max_uid ;
 int cur_min_uid ;
 char* dyn_cur ;
 double get_utime (int ) ;
 double last_process_time ;
 int process_user_messages (TYPE_1__*,scalar_t__) ;
 size_t processed_users ;
 size_t tot_users ;
 scalar_t__ unconv_uid (int) ;

void process_loaded_messages (void) {
  int i;
  char *keep_dyn_cur;

  double tm = get_utime (CLOCK_MONOTONIC);

  for (i = cur_min_uid; i < cur_max_uid; i++) {
    if (User[i]) {
      assert (processed_users < tot_users);
      assert (UserDirectory[processed_users]->user_id == unconv_uid (i));
      keep_dyn_cur = dyn_cur;
      process_user_messages (UserDirectory[processed_users], User[i]);
      dyn_cur = keep_dyn_cur;
      processed_users++;
    }
  }

  last_process_time = get_utime (CLOCK_MONOTONIC) - tm;
}
