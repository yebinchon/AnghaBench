
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_delete_album {int album_id; } ;


 int user_delete_album (int *,int ) ;

int delete_album (user *u, struct lev_photo_delete_album *E, int size) {
  return user_delete_album (u, E->album_id);
}
