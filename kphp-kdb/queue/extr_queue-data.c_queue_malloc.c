
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ev_first; } ;
typedef TYPE_1__ queue ;


 scalar_t__ dl_get_memory_used () ;
 TYPE_1__* dl_malloc0 (int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* qs ;
 int queues_cnt ;
 int queues_memory ;

queue *queue_malloc (void) {
  queues_cnt++;
  if (qs == ((void*)0)) {
    queues_memory -= dl_get_memory_used();
    queue *res = dl_malloc0 (sizeof (queue));
    queues_memory += dl_get_memory_used();

    return res;
  }
  queue *res = qs;
  qs = (queue *)qs->ev_first;
  memset (res, 0, sizeof (queue));

  return res;
}
