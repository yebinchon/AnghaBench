
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wakeup_time; int h_idx; } ;
typedef TYPE_1__ event_timer_t ;


 TYPE_1__** et_heap ;
 int et_heap_size ;

__attribute__((used)) static inline int basic_et_adjust (event_timer_t *et, int i) {
  int j;
  while (i > 1) {
    j = (i >> 1);
    if (et_heap[j]->wakeup_time <= et->wakeup_time) {
      break;
    }
    et_heap[i] = et_heap[j];
    et_heap[i]->h_idx = i;
    i = j;
  }
  j = 2*i;
  while (j <= et_heap_size) {
    if (j < et_heap_size && et_heap[j]->wakeup_time > et_heap[j+1]->wakeup_time) {
      j++;
    }
    if (et->wakeup_time <= et_heap[j]->wakeup_time) {
      break;
    }
    et_heap[i] = et_heap[j];
    et_heap[i]->h_idx = i;
    i = j;
    j <<= 1;
  }
  et_heap[i] = et;
  et->h_idx = i;
  return i;
}
