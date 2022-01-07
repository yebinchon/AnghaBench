
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int assert (int) ;
 scalar_t__ location_buf ;
 int memcpy (scalar_t__,char*,int) ;
 int user_loaded (int *) ;
 char* user_photo_get_location (int *,int,int,int,int*) ;
 int user_photo_set_location (int *,int,int,scalar_t__,int) ;
 scalar_t__ write_only ;

int user_change_photo_location_server (user *u, int pid, int original, int server_num, int sid) {
  assert (0 <= server_num && server_num <= 1);

  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  int len;
  char *loc = user_photo_get_location (u, pid, original, 1, &len);

  if (loc == ((void*)0) || len == 0 || loc[0] >= 0) {
    return 0;
  }

  memcpy (location_buf, loc, len);
  assert (len >= 1 + 2 * sizeof (int));
  int *server = (int *)(location_buf + 1);
  server[server_num] = sid;

  return user_photo_set_location (u, pid, original, location_buf, len);
}
