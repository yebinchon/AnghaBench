
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ user ;
typedef double rating ;


 scalar_t__ GET_USER_RATING_STATE (int ) ;
 double RATING_NORM ;
 double expf (double) ;
 scalar_t__ fading ;
 scalar_t__ now ;
 scalar_t__ ratingT ;
 double* user_get_object_rating (TYPE_1__*,int,int) ;

rating user_get_now_object_rating (user *u, int local_id, int num) {
  if (GET_USER_RATING_STATE(u->flags) == 0) {
    return 0.0;
  }

  rating r = *user_get_object_rating (u, local_id, num);
  if (fading) {
    r *= expf (((rating)(ratingT - now)) / RATING_NORM);
  }
  return r;
}
