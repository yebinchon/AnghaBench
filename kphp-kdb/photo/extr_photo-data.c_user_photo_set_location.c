
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user ;
typedef int data ;
struct TYPE_3__ {int v_raw_len; } ;


 int TMP_ADD_CHANGE (int ,int ,char*) ;
 int assert (int) ;
 int photo_type__location ;
 int photo_type__original_location ;
 int raw ;
 TYPE_1__* tmp_field_changes ;
 size_t tmp_field_changes_n ;
 int user_change_data (int *,int,TYPE_1__*,size_t,int) ;
 int user_get_aid_by_pid (int *,int) ;
 int * user_get_photo_data (int *,int) ;
 scalar_t__ user_loaded (int *) ;
 int write_only ;

int user_photo_set_location (user *u, int pid, int original, char *loc, int len) {


  assert (user_loaded (u) && !write_only);

  int aid = user_get_aid_by_pid (u, pid);
  assert (aid != 0);

  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    return 0;
  }

  tmp_field_changes_n = 0;
  tmp_field_changes[tmp_field_changes_n].v_raw_len = len;
  TMP_ADD_CHANGE (original ? photo_type__original_location : photo_type__location, raw, loc);

  user_change_data (d, pid, tmp_field_changes, tmp_field_changes_n, 1);

  return 1;
}
