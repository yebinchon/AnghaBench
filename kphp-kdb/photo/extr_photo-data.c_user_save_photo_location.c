
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int ) ;
 int user_loaded (int *) ;
 char* user_photo_get_location (int *,int,int,int,int*) ;
 int user_photo_set_location (int *,int,int,char*,int) ;
 scalar_t__ write_only ;

int user_save_photo_location (user *u, int pid) {
  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  int len;
  char *loc = user_photo_get_location (u, pid, 1, 1, &len);

  if (len > 1) {
    return 0;
  }

  loc = user_photo_get_location (u, pid, 0, 1, &len);

  if (loc == ((void*)0) || len <= 1) {
    return 1;
  }

  user_photo_set_location (u, pid, 1, loc, len);
  user_photo_set_location (u, pid, 0, "", 1);

  return 1;
}
