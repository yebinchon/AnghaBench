
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; } ;


 TYPE_1__* finished_aio_queue ;
 TYPE_1__* queue_del_first_finished_aio (TYPE_1__*) ;
 int tl_aio_query_restart (int ) ;

void tl_aio_query_restart_all_finished (void) {
  while (finished_aio_queue) {
    tl_aio_query_restart (finished_aio_queue->x);
    finished_aio_queue = queue_del_first_finished_aio (finished_aio_queue);
  }
}
