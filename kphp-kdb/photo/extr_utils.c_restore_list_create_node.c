
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int val; } ;
typedef TYPE_1__ restore_list ;


 TYPE_1__* dl_malloc (int) ;
 int restore_list_connect (TYPE_1__*,TYPE_1__*) ;

restore_list *restore_list_create_node (restore_list *prev, restore_list *next, int val) {
  restore_list *res = dl_malloc (sizeof (restore_list));

  restore_list_connect (res, next);
  restore_list_connect (prev, res);

  res->val = val;

  return res;
}
