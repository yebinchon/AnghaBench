
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int last_visited; } ;
typedef TYPE_1__ user_t ;
typedef int olist_t ;


 int * OHead ;
 int OLIST_COUNT ;
 scalar_t__ is_valid_online_stamp (int ) ;
 int * ocntT ;
 int online_convert_time (int ) ;
 int online_list_add_after (int *,int ) ;
 int user_to_olist (TYPE_1__*) ;

void user_online_tree_insert (user_t *U) {
  if (is_valid_online_stamp (U->last_visited)) {
    int p = online_convert_time (U->last_visited);
    online_list_add_after ((olist_t *)&OHead[p], user_to_olist (U));
    ocntT[p + OLIST_COUNT]++;
  }
}
