
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* ev_last; TYPE_2__* ev_first; } ;
typedef TYPE_1__ queue ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ event ;


 int assert (int ) ;

inline void queue_add (queue *q, event *e) {
  assert (e->next == ((void*)0));
  if (q->ev_first == ((void*)0)) {
    q->ev_first = q->ev_last = e;
  } else {
    q->ev_last->next = e;
    q->ev_last = e;
  }
}
