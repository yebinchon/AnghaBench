
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_restore_photo {int photo_id; } ;


 int user_restore_photo (int *,int ) ;

int restore_photo (user *u, struct lev_photo_restore_photo *E, int size) {
  return user_restore_photo (u, E->photo_id);
}
