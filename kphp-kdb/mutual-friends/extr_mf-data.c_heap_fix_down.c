
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ y; } ;
typedef TYPE_1__ trp_node ;


 TYPE_1__** heap ;
 int heap_size ;

void heap_fix_down (void) {
  int j, k, t;
  trp_node *tmp;
  k = 1;
  while (1) {
    j = k;
    t = j * 2;
    if (t <= heap_size && heap[t]->y > heap[k]->y) {
      k = t;
    }
    t++;
    if (t <= heap_size && heap[t]->y > heap[k]->y) {
      k = t;
    }
    if (k != j) {
      tmp = heap[k], heap[k] = heap[j], heap[j] = tmp;
    } else {
      break;
    }
  }
}
