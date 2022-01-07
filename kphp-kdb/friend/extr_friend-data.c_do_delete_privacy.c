
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_del_privacy {scalar_t__ key; } ;
typedef scalar_t__ privacy_key_t ;


 int LEV_FR_DEL_PRIVACY ;
 struct lev_del_privacy* alloc_log_event (int ,int,int) ;
 scalar_t__ conv_uid (int) ;
 int delete_privacy (int ,scalar_t__) ;
 int get_user (int) ;

int do_delete_privacy (int user_id, privacy_key_t privacy_key) {
  if (conv_uid (user_id) < 0 || !privacy_key) {
    return -1;
  }

  struct lev_del_privacy *E = alloc_log_event (LEV_FR_DEL_PRIVACY, 16, user_id);
  E->key = privacy_key;

  return delete_privacy (get_user (user_id), privacy_key);
}
