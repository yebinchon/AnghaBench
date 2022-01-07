
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user ;
struct lev_photo_create_album {int dummy; } ;


 int user_create_album (int *) ;

int create_album (user *u, struct lev_photo_create_album *E, int size) {
  return user_create_album (u);
}
