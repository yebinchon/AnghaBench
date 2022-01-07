
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;


 int assert (int ) ;
 int user_change_order (int *,int,int,int) ;
 int user_get_aid_by_pid (int *,int) ;
 int * user_get_photo_data (int *,int) ;
 int user_loaded (int *) ;
 scalar_t__ write_only ;

int user_change_photo_order (user *u, int pid, int pid_near, int is_next) {


  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  int aid = user_get_aid_by_pid (u, pid);
  if (aid == 0) {
    return 0;
  }

  if (pid_near != 0 && aid != user_get_aid_by_pid (u, pid_near)) {
    return 0;
  }

  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    return 0;
  }

  return user_change_order (d, pid, pid_near, is_next) > -1;
}
