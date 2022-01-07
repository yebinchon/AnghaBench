
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALBUM_TYPE ;
 int LEV_PHOTO_CHANGE_ALBUM ;
 int MAX_EVENT_SIZE ;
 int check_album_id (int) ;
 int do_change_data (int,int,int ) ;
 scalar_t__ field_changes_n ;
 scalar_t__ php_get_fields (int ,char*) ;
 int strlen (char*) ;

int do_change_album (int uid, int aid, char *changes) {
  if (changes == ((void*)0)) {
    return 0;
  }

  int l = strlen (changes);
  if (!check_album_id (aid) || l == 0 || l >= MAX_EVENT_SIZE) {
    return 0;
  }


  if (php_get_fields (ALBUM_TYPE, changes) < 0) {
    return 0;
  }

  if (field_changes_n == 0) {
    return 1;
  }

  return do_change_data (uid, aid, LEV_PHOTO_CHANGE_ALBUM);
}
