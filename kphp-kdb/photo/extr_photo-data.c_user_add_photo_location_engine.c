
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int READ_CHAR (char*,char) ;
 int READ_INT (char*,int) ;
 int READ_LONG (char*,unsigned long long) ;
 int assert (char) ;
 int check_photo_id (int) ;
 char* location_buf ;
 int memcpy (char*,char*,int) ;
 char mode ;
 int save_location (char*,char,int,int,int,unsigned long long) ;
 char user_loaded (int *) ;
 char* user_photo_get_location (int *,int,int,int,int*) ;
 int user_photo_set_location (int *,int,int,char*,int) ;
 scalar_t__ write_only ;

int user_add_photo_location_engine (user *u, int pid, int original, char size, int rotate, int vid, int local_id, int extra, unsigned long long secret) {
  if (vid <= 0 || local_id <= 0 || !check_photo_id (pid) || size < 'a' || size > 'z' || rotate < 0 || rotate > 3) {
    return 0;
  }

  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));



  int len;
  char *loc = user_photo_get_location (u, pid, original, 1, &len);

  if (loc == ((void*)0)) {
    return 0;
  }

  char *s = location_buf;

  if (len > 0 && loc[0] < 0) {
    int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
    memcpy (s, loc, cur);
    s += cur;
    loc += cur;
  }
  char *t = s++;

  size -= 'a' - 1;
  size += (rotate << 5);

  char count = 0;
  int old_vid = 0, old_local_id = 0, old_extra = 0, new_vid = 0, new_local_id = 0, i;
  char old_size = 0, new_size = 0, diff;
  unsigned long long old_secret = 0;
  for (i = len ? *loc++ : 0; i > 0; i--) {
    READ_CHAR(loc, old_size);
    assert (old_size);
    if (old_size < 0) {
      old_size *= -1;
      READ_CHAR(loc, diff);
      old_local_id += diff;
    } else {
      READ_INT(loc, old_vid);
      READ_INT(loc, old_local_id);
    }
    READ_INT(loc, old_extra);
    READ_LONG(loc, old_secret);
    if (size <= old_size) {
      save_location (s, size, vid, local_id, extra, secret);

      if (size != old_size) {
        save_location (s, old_size, old_vid, old_local_id, old_extra, old_secret);
      }

      size = 127;
    } else {
      save_location (s, old_size, old_vid, old_local_id, old_extra, old_secret);
    }
  }
  if (size != 127) {
    save_location (s, size, vid, local_id, extra, secret);
  }
  *t = count;

  return user_photo_set_location (u, pid, original, location_buf, (s - location_buf));
}
