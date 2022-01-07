
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pending_queue; } ;
typedef TYPE_1__ uv_loop_t ;
struct TYPE_6__ {int pending_queue; } ;
typedef TYPE_2__ uv__io_t ;


 scalar_t__ QUEUE_EMPTY (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;

void uv__io_feed(uv_loop_t* loop, uv__io_t* w) {
  if (QUEUE_EMPTY(&w->pending_queue))
    QUEUE_INSERT_TAIL(&loop->pending_queue, &w->pending_queue);
}
