
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* loop; int queue; } ;
typedef TYPE_2__ uv_process_t ;
struct TYPE_5__ {int child_watcher; int process_handles; } ;


 scalar_t__ QUEUE_EMPTY (int *) ;
 int QUEUE_REMOVE (int *) ;
 int uv__handle_stop (TYPE_2__*) ;
 int uv_signal_stop (int *) ;

void uv__process_close(uv_process_t* handle) {
  QUEUE_REMOVE(&handle->queue);
  uv__handle_stop(handle);
  if (QUEUE_EMPTY(&handle->loop->process_handles))
    uv_signal_stop(&handle->loop->child_watcher);
}
