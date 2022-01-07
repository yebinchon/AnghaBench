
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current_album_id; } ;
typedef TYPE_1__ user ;


 scalar_t__ MAX_ALBUMS ;
 int assert (int ) ;
 int user_create_album_internal (TYPE_1__*,int ) ;
 scalar_t__ user_get_albums_count (TYPE_1__*) ;
 int user_loaded (TYPE_1__*) ;
 scalar_t__ write_only ;

int user_create_album (user *u) {


  if (write_only) {
    return u->current_album_id++;
  }

  assert (user_loaded (u));

  if (user_get_albums_count (u) >= MAX_ALBUMS) {
    u->current_album_id++;
    return 0;
  }



  if (!user_create_album_internal (u, u->current_album_id)) {
    u->current_album_id++;
    return 0;
  }
  return u->current_album_id++;
}
