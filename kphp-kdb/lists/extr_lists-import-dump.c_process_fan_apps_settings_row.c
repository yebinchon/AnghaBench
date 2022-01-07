
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** I ;
 scalar_t__ LEV_LI_DECR_FLAGS ;
 scalar_t__ LEV_LI_INCR_FLAGS ;
 int adj_rec ;
 size_t as_app_id ;
 int as_can_access_audio ;
 size_t as_can_notify ;
 size_t as_user_id ;
 scalar_t__ conv_uid (void*) ;
 void* list_id ;
 int log_1int (scalar_t__,int) ;

void process_fan_apps_settings_row (void) {
  int app_id = I[as_app_id], flags = 0, i;
  list_id = I[as_user_id];
  if (conv_uid (list_id) < 0 || app_id <= 0) {
    return;
  }
  for (i = as_can_notify; i <= as_can_access_audio; i++) {
    if (I[i]) {
      flags += (1 << i);
    }
  }
  if (!I[as_can_notify]) {
    log_1int (LEV_LI_DECR_FLAGS + (1 << as_can_notify), app_id);
  }
  log_1int (LEV_LI_INCR_FLAGS + flags, app_id);
  adj_rec++;
}
