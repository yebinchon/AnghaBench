
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int data ;
typedef int actual_object ;


 int assert (int ) ;
 int dbg (char*) ;
 int user_get_aid_by_pid (int *,int) ;
 int user_get_obj (int *,int,int const,int *) ;
 int * user_get_photo_data (int *,int) ;
 int user_loaded (int *) ;

int user_get_photo (user *u, int pid, const int force, actual_object *o) {
  assert (user_loaded (u));

  int aid = user_get_aid_by_pid (u, pid);
  if (aid == 0) {
    dbg ("no album found (pid->aid)\n");
    return -1;
  }
  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0)) {
    dbg ("no album data found\n");
    return -1;
  }
  return user_get_obj (d, pid, force, o);
}
