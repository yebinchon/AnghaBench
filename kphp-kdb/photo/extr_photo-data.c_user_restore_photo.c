
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;


 scalar_t__ GET_MAX_PHOTOS (int) ;
 int assert (int) ;
 scalar_t__ data_get_cnt (int *) ;
 scalar_t__ data_get_hidden_state (int *,int) ;
 int data_restore (int *,int) ;
 int user_get_aid_by_pid (int *,int) ;
 int * user_get_photo_data (int *,int) ;
 scalar_t__ write_only ;

int user_restore_photo (user *u, int pid) {
  if (write_only) {
    return 1;
  }

  int aid = user_get_aid_by_pid (u, pid);
  if (aid == 0) {
    return 0;
  }
  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    return 0;
  }
  if (data_get_hidden_state (d, pid) == 0) {
    return 0;
  }
  if (data_get_cnt (d) >= GET_MAX_PHOTOS (aid)) {
    return 0;
  }
  assert (data_restore (d, pid) > -1);
  return 1;
}
