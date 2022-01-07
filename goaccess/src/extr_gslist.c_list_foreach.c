
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; struct TYPE_3__* next; } ;
typedef TYPE_1__ GSLList ;



int
list_foreach (GSLList * node, int (*func) (void *, void *), void *user_data)
{
  while (node) {
    if (func (node->data, user_data) != 0)
      return -1;
    node = node->next;
  }

  return 0;
}
