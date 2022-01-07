
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ user ;


 int GET_USER_RATING_STATE (int ) ;
 int rating_cmp (int ,int ) ;
 int * user_get_object_rating (TYPE_1__*,int,int) ;
 long long user_get_object_type_id (TYPE_1__*,int) ;

int object_cmp (user *u, int a, int b, int num) {
  int x = 0;
  if (GET_USER_RATING_STATE(u->flags) == 1) {
    x = rating_cmp (*user_get_object_rating (u, a, num), *user_get_object_rating (u, b, num));
  }
  if (x != 0) {
    return x;
  }


  long long a1 = user_get_object_type_id (u, a);
  long long b1 = user_get_object_type_id (u, b);

  if (a1 < b1) {
    return 1;
  } else if (a1 > b1) {
    return -1;
  }

  return 0;
}
