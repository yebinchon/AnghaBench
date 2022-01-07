
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uid; } ;
typedef TYPE_1__ user_t ;


 int CurrentCond ;
 int user_matches_condition (TYPE_1__*,int ,int ) ;

inline int user_matches (user_t *U) {
  return user_matches_condition (U, CurrentCond, U->uid);
}
