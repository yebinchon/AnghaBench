
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int) ;
 char* location_buf ;
 int memcpy (char*,char*,int) ;
 char mode ;
 int user_loaded (int *) ;
 char* user_photo_get_location (int *,int,int,int,int*) ;
 int user_photo_set_location (int *,int,int,char*,int) ;
 scalar_t__ write_only ;

int user_del_photo_location (user *u, int pid, int original) {
  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  int len;
  char *loc = user_photo_get_location (u, pid, original, 1, &len);

  if (loc == ((void*)0)) {
    return 0;
  }
  if (len == 0 || loc[0] >= 0) {
    return 1;
  }

  char *s = location_buf;
  int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
  len -= cur;
  loc += cur;

  assert (len > 0);
  memcpy (s, loc, len);

  return user_photo_set_location (u, pid, original, location_buf, len);
}
