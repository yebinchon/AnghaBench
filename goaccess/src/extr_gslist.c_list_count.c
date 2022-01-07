
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ GSLList ;



int
list_count (GSLList * node)
{
  int count = 0;
  while (node != 0) {
    count++;
    node = node->next;
  }
  return count;
}
