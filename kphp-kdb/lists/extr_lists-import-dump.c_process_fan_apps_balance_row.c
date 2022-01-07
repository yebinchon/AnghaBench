
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** I ;
 scalar_t__ LEV_LI_SET_ENTRY ;
 int adj_rec ;
 size_t as_app_id ;
 size_t as_coins ;
 size_t as_user_id ;
 scalar_t__ conv_uid (void*) ;
 void* list_id ;
 int log_2ints (scalar_t__,int,void*) ;

void process_fan_apps_balance_row (void) {
  int app_id = I[as_app_id];
  list_id = I[as_user_id];
  if (conv_uid (list_id) < 0 || app_id <= 0 || !I[as_coins]) {
    return;
  }
  log_2ints (LEV_LI_SET_ENTRY + 0, app_id, I[as_coins]);
  adj_rec++;
}
