
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct relative {int type; TYPE_1__* prev; struct relative* next; } ;
struct TYPE_4__ {struct relative* next; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 TYPE_2__ RELATIVES ;
 int delete_relative (TYPE_1__*,int) ;

void clear_all_children_connections (void) {
  struct relative *cur = RELATIVES.next;
  while (cur->type != -1) {
    cur = cur->next;
    if (cur->prev->type == 0) {
      delete_relative (cur->prev, 1);
    }
  }
}
