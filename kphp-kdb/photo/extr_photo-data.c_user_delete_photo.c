
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int album_by_photo; } ;
typedef TYPE_1__ user ;
typedef int data ;


 int HIDE_ITERS ;
 scalar_t__ MAX_HIDE ;
 int assert (int) ;
 int data_del (int *,int) ;
 scalar_t__ data_get_hidden_state (int *,int) ;
 int data_hide (int *,int,int ) ;
 scalar_t__ data_hide_expected_size (int *) ;
 int lookup_set (int *,int,int ) ;
 int user_get_aid_by_pid (TYPE_1__*,int) ;
 int * user_get_photo_data (TYPE_1__*,int) ;
 int user_loaded (TYPE_1__*) ;
 scalar_t__ write_only ;

int user_delete_photo (user *u, int pid) {
  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  int aid = user_get_aid_by_pid (u, pid);
  if (aid == 0) {
    return 0;
  }
  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    return 0;
  }
  if (data_get_hidden_state (d, pid) != 0) {
    return 0;
  }

  if (data_hide_expected_size(d) >= MAX_HIDE) {
    assert (data_del (d, pid) > -1);
    lookup_set (&u->album_by_photo, pid, 0);
  } else {
    assert (data_hide (d, pid, HIDE_ITERS) > -1);
  }

  return 1;
}
