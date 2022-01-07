
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_change_photo_order {int type; int photo_id_near; int photo_id; } ;


 int LEV_PHOTO_CHANGE_PHOTO_ORDER ;
 int mode ;
 int user_change_photo_order (int *,int ,int ,int) ;

int change_photo_order (user *u, struct lev_photo_change_photo_order *E, int size) {
  return user_change_photo_order (u, E->photo_id, E->photo_id_near, E->type - (mode << 16) - LEV_PHOTO_CHANGE_PHOTO_ORDER);
}
