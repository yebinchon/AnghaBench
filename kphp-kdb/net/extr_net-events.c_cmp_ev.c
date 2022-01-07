
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int priority; long long timestamp; } ;
typedef TYPE_1__ event_t ;



int cmp_ev (event_t *ev1, event_t *ev2) {
  int x = ev1->priority - ev2->priority;
  long long t;
  if (x) return x;
  t = ev1->timestamp - ev2->timestamp;
  return t < 0 ? -1 : (t ? 1 : 0);
}
