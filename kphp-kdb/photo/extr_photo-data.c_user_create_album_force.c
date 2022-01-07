
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current_album_id; } ;
typedef TYPE_1__ user ;


 scalar_t__ MAX_ALBUMS ;
 int assert (int ) ;
 int check_album_id (int) ;
 int user_create_album_internal (TYPE_1__*,int) ;
 scalar_t__ user_get_albums_count (TYPE_1__*) ;
 int user_loaded (TYPE_1__*) ;
 scalar_t__ write_only ;

int user_create_album_force (user *u, int aid) {

  if (!check_album_id (aid)) {
    return -1;
  }

  if (aid > u->current_album_id) {
    return -1;
  }

  if (write_only) {
    return 1;
  }

  assert (user_loaded (u));

  if (user_get_albums_count (u) >= MAX_ALBUMS) {
    return -1;
  }

  return user_create_album_internal (u, aid);
}
