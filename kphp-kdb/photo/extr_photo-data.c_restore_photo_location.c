
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_restore_photo_location {int photo_id; } ;


 int user_restore_photo_location (int *,int ) ;

int restore_photo_location (user *u, struct lev_photo_restore_photo_location *E, int size) {
  return user_restore_photo_location (u, E->photo_id);
}
