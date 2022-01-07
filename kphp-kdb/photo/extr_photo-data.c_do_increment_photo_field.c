
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_PHOTO_INCREM_PHOTO_FIELD ;
 scalar_t__ PHOTO_TYPE ;
 int check_photo_id (int) ;
 int do_increment_data (int,int,int,int,int ) ;
 int get_field_id (scalar_t__,char*) ;
 scalar_t__ types ;

int do_increment_photo_field (int uid, int pid, char *field_name, int cnt) {
  if (field_name == ((void*)0)) {
    return 0;
  }

  if (!check_photo_id (pid)) {
    return 0;
  }

  int field_id = get_field_id (types + PHOTO_TYPE, field_name);
  if (field_id < 0) {
    return 0;
  }

  return do_increment_data (uid, pid, field_id, cnt, LEV_PHOTO_INCREM_PHOTO_FIELD);
}
