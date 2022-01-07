
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ev_first; } ;
typedef TYPE_1__ queue ;
typedef int event ;


 TYPE_1__* qs ;
 int queues_cnt ;

void queue_free (queue *q) {
  queues_cnt--;
  q->ev_first = (event *)qs;
  qs = q;
}
