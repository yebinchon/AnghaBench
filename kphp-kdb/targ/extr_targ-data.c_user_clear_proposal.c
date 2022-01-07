
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ proposal; } ;
typedef TYPE_1__ user_t ;


 int store_proposal (TYPE_1__*,int ,int ) ;

int user_clear_proposal (user_t *U) {
  int res = (U->proposal != 0);
  store_proposal (U, 0, 0);
  return res;
}
