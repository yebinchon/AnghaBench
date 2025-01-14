
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_PHOTO_CHANGE_PHOTO ;
 int MAX_EVENT_SIZE ;
 int PHOTO_TYPE ;
 int check_photo_id (int) ;
 int do_change_data (int,int,int ) ;
 scalar_t__ field_changes_n ;
 scalar_t__ php_get_fields (int ,char*) ;
 int strlen (char*) ;

int do_change_photo (int uid, int pid, char *changes) {
  if (changes == ((void*)0)) {
    return 0;
  }

  int l = strlen (changes);
  if (!check_photo_id (pid) || l == 0 || l >= MAX_EVENT_SIZE) {
    return 0;
  }

  if (php_get_fields (PHOTO_TYPE, changes) < 0) {
    return 0;
  }

  if (field_changes_n == 0) {
    return 1;
  }

  return do_change_data (uid, pid, LEV_PHOTO_CHANGE_PHOTO);
}
