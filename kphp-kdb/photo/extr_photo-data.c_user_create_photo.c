
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int current_photo_id; } ;
typedef TYPE_1__ user ;
typedef int data ;


 scalar_t__ GET_MAX_PHOTOS (int) ;
 int assert (int) ;
 int check_album_id (int) ;
 scalar_t__ data_get_cnt (int *) ;
 int user_create_album_force (TYPE_1__*,int) ;
 int user_create_photo_internal (TYPE_1__*,int *,int,int,int) ;
 int * user_get_photo_data (TYPE_1__*,int) ;
 int user_loaded (TYPE_1__*) ;
 scalar_t__ write_only ;

int user_create_photo (user *u, int aid, int cnt) {

  if (!check_album_id (aid)) {
    return 0;
  }

  if (write_only) {
    int res = u->current_photo_id;

    u->current_photo_id += cnt;


    return res;
  }

  assert (user_loaded (u));

  int res = u->current_photo_id;

  if (aid < 0) {
    user_create_album_force (u, aid);
  }

  data *d = user_get_photo_data (u, aid);
  if (d == ((void*)0) || data_get_cnt (d) + cnt > GET_MAX_PHOTOS (aid)) {
    u->current_photo_id += cnt;

    return 0;
  }

  int ret = user_create_photo_internal (u, d, aid, cnt, res);
  assert (ret == cnt);

  u->current_photo_id += cnt;

  return res;
}
