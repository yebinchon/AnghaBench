
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** I ;
 scalar_t__ LEV_LI_ADD_ENTRY ;
 int adj_rec ;
 size_t an_app_id ;
 size_t an_inviter_id ;
 size_t an_user_id ;
 scalar_t__ conv_uid (void*) ;
 void* list_id ;
 int log_2ints (scalar_t__,int,void*) ;

void process_fan_apps_notify_row (void) {
  int app_id = I[an_app_id];
  list_id = I[an_user_id];
  if (conv_uid (list_id) < 0 || list_id <= 0 || app_id <= 0) {
    return;
  }
  log_2ints (LEV_LI_ADD_ENTRY + 2, app_id, I[an_inviter_id]);
  adj_rec++;
}
