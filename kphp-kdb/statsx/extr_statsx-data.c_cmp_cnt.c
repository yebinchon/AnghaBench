
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ counter_id; scalar_t__ created_at; } ;


 TYPE_1__** Counters ;

int cmp_cnt (const void *_a, const void *_b) {
  int a = *(int *)_a;
  int b = *(int *)_b;
  if (Counters[a]->counter_id < Counters[b]->counter_id) return -1;
  if (Counters[a]->counter_id > Counters[b]->counter_id) return 1;
  if (Counters[a]->created_at < Counters[b]->created_at) return 1;
  if (Counters[a]->created_at > Counters[b]->created_at) return -1;
  return 0;
}
