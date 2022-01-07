
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; int local_id; int d; int current_album_id; int current_photo_id; } ;
typedef TYPE_2__ user ;
struct TYPE_8__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_6__ {int id; int current_album_id; int current_photo_id; } ;


 int MIN_NEW_ALBUM_ID ;
 int MIN_NEW_PHOTO_ID ;
 int album_func ;
 int assert (int) ;
 int cur_local_id ;
 int data_init (int *,int *) ;
 int dl_abs (int) ;
 int h_users ;
 TYPE_4__ header ;
 scalar_t__ import_dump_mode ;
 int log_split_min ;
 int log_split_mod ;
 scalar_t__ set_intp_add (int *,int*) ;
 int user_cnt ;
 TYPE_2__* users ;
 int write_only ;

user *conv_uid (int user_id) {
  if (user_id == 0) {
    return ((void*)0);
  }
  if (dl_abs (user_id) % log_split_mod != log_split_min) {
    return ((void*)0);
  }
  if (import_dump_mode) {
    return users;
  }

  user **u = (user **)set_intp_add (&h_users, &user_id);
  if (*u == (user *)&user_id) {
    assert (cur_local_id + 1 < user_cnt);

    *u = &users[++cur_local_id];
    (*u)->id = user_id;
    (*u)->local_id = cur_local_id;

    if (cur_local_id <= header.user_cnt) {
      assert (user_id == header.user_index[cur_local_id].id);
      (*u)->current_photo_id = header.user_index[cur_local_id].current_photo_id;
      (*u)->current_album_id = header.user_index[cur_local_id].current_album_id;
    } else {
      (*u)->current_photo_id = MIN_NEW_PHOTO_ID;
      (*u)->current_album_id = MIN_NEW_ALBUM_ID;
    }


    if (!write_only) {
      data_init (&(*u)->d, &album_func);
    }
  }
  return *u;
}
