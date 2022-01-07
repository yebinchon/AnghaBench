
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_create_album_force {int album_id; } ;


 int user_create_album_force (int *,int ) ;

int create_album_force (user *u, struct lev_photo_create_album_force *E, int size) {
  return user_create_album_force (u, E->album_id) == 1;
}
