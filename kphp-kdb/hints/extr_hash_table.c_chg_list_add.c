
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* change_list_ptr ;
struct TYPE_6__ {int type; int x; struct TYPE_6__* next; int number; int timestamp; } ;


 TYPE_1__* chg_list_get_entry () ;
 int now ;

inline change_list_ptr chg_list_add (change_list_ptr *st, change_list_ptr *en, int type, int x) {
  static int autoincrement = 0;

  change_list_ptr v = chg_list_get_entry();
  v->type = type;
  v->x = x;
  v->timestamp = now;
  v->number = autoincrement++;

  v->next = ((void*)0);
  if (*st == ((void*)0)) {
    *st = v;
  } else {
    (*en)->next = v;
  }
  *en = v;

  return v;
}
