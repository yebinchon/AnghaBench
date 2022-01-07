
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* change_list_ptr ;
struct TYPE_5__ {int * next; scalar_t__ timestamp; int * s; scalar_t__ x; scalar_t__ type; } ;


 TYPE_1__* chg_list_get_entry () ;

void chg_list_init (change_list_ptr *st, change_list_ptr *en) {
  change_list_ptr v = chg_list_get_entry();
  v->type = 0;
  v->x = 0;
  v->s = ((void*)0);
  v->timestamp = 0;
  v->next = ((void*)0);
  *st = *en = v;
}
