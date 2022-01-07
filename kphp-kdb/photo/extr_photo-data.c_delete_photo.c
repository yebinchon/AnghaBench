
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_delete_photo {int photo_id; } ;


 int user_delete_photo (int *,int ) ;

int delete_photo (user *u, struct lev_photo_delete_photo *E, int size) {
  return user_delete_photo (u, E->photo_id);
}
