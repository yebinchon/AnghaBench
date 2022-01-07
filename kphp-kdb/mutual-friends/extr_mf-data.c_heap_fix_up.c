
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ y; } ;
typedef TYPE_1__ trp_node ;


 TYPE_1__** heap ;

void heap_fix_up (int j) {
  trp_node *tmp;
  int k = 0;

  while (j > 1 && heap[j]->y > heap[k = j / 2]->y) {
    tmp = heap[j], heap[j] = heap[k], heap[k] = tmp;
    j = k;
  }
}
