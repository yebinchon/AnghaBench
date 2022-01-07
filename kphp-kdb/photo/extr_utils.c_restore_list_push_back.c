
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prev; } ;
typedef TYPE_1__ restore_list ;


 int restore_list_create_node (int ,TYPE_1__*,int) ;

void restore_list_push_back (restore_list *v, int val) {
  restore_list_create_node (v->prev, v, val);
}
