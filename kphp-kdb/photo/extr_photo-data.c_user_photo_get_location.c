
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
typedef int actual_object ;


 int assert (int) ;
 char* event_get_location (int *,int,int*) ;
 scalar_t__ user_get_photo (int *,int,int const,int *) ;
 scalar_t__ user_loaded (int *) ;
 int write_only ;

char *user_photo_get_location (user *u, int pid, int original, const int force, int *len) {
  assert (user_loaded (u) && !write_only);



  actual_object o;
  if (user_get_photo (u, pid, force, &o) < 0) {
    return ((void*)0);
  }
  return event_get_location (&o, original, len);
}
