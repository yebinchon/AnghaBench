
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int user_t ;
typedef TYPE_1__* condition_t ;
struct TYPE_4__ {int (* eval ) (TYPE_1__*,int *,int ,int) ;} ;


 int stub1 (TYPE_1__*,int *,int ,int) ;

inline int user_matches_condition (user_t *U, condition_t C, int uid) {
  return C->eval (C, U, 0, uid);
}
