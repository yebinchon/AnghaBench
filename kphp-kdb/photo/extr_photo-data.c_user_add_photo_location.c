
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;


 int WRITE_INT (char*,int) ;
 int WRITE_STRING (char*,char*) ;
 int assert (int ) ;
 int check_photo (char*,int) ;
 char* location_buf ;
 int memcpy (char*,char*,int) ;
 char mode ;
 int strlen (char*) ;
 int user_loaded (int *) ;
 char* user_photo_get_location (int *,int,int,int,int*) ;
 int user_photo_set_location (int *,int,int,char*,int) ;
 scalar_t__ write_only ;

int user_add_photo_location (user *u, int pid, int original, int sid, int sid2, int orig_oid, int orig_aid, char *photo) {


  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));
  int l = strlen (photo);
  assert (check_photo (photo, l));

  int len;
  char *loc = user_photo_get_location (u, pid, original, 1, &len);

  if (loc == ((void*)0)) {
    return 0;
  }

  char *s = location_buf;
  if (len > 0 && loc[0] < 0) {
    int cur = -(loc[0] + mode) + 4 * sizeof (int) + 1;
    len -= cur;
    loc += cur;
  }

  *s++ = -l - mode;
  WRITE_INT(s, sid);
  WRITE_INT(s, sid2);
  WRITE_INT(s, orig_oid);
  WRITE_INT(s, orig_aid);
  WRITE_STRING(s, photo);

  if (len == 0) {
    *s++ = 0;
  } else {
    memcpy (s, loc, len);
  }

  return user_photo_set_location (u, pid, original, location_buf, (s - location_buf) + len);
}
