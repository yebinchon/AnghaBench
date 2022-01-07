
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ restore_list ;


 int assert (int ) ;

int restore_list_is_empty (restore_list *v) {
  if (v != ((void*)0)) {
    assert (v->next != ((void*)0));
  }
  return v == ((void*)0) || v->next == v;
}
