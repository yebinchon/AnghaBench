
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int object_old_n; int * object_ratings; int * object_old_ratings; } ;
typedef TYPE_1__ user ;
typedef int rating ;


 int assert (int) ;
 int check (TYPE_1__*,int) ;
 int rating_num ;

rating *user_get_object_rating (user *u, int local_id, int num) {
  check (u, local_id);
  assert (0 <= num && num < rating_num);

  if (local_id <= u->object_old_n) {
    return &u->object_old_ratings[local_id * rating_num + num];
  } else {
    return &u->object_ratings[(local_id - u->object_old_n) * rating_num + num];
  }
}
