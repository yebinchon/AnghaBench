
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; int next; } ;
typedef TYPE_1__ inst ;
struct TYPE_6__ {TYPE_1__* last; scalar_t__ first; } ;
typedef TYPE_2__ block ;



__attribute__((used)) static inst* block_take_last(block* b) {
  inst* i = b->last;
  if (i == 0)
    return 0;
  if (i->prev) {
    i->prev->next = i->next;
    b->last = i->prev;
    i->prev = 0;
  } else {
    b->first = 0;
    b->last = 0;
  }
  return i;
}
