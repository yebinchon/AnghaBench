
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int async_handles; } ;
typedef TYPE_1__ uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_9__ {int queue; scalar_t__ pending; int async_cb; } ;
typedef TYPE_2__ uv_async_t ;
typedef int uv_async_cb ;


 int QUEUE_INSERT_TAIL (int *,int *) ;
 int UV_ASYNC ;
 int uv__async_start (TYPE_1__*) ;
 int uv__handle_init (TYPE_1__*,int *,int ) ;
 int uv__handle_start (TYPE_2__*) ;

int uv_async_init(uv_loop_t* loop, uv_async_t* handle, uv_async_cb async_cb) {
  int err;

  err = uv__async_start(loop);
  if (err)
    return err;

  uv__handle_init(loop, (uv_handle_t*)handle, UV_ASYNC);
  handle->async_cb = async_cb;
  handle->pending = 0;

  QUEUE_INSERT_TAIL(&loop->async_handles, &handle->queue);
  uv__handle_start(handle);

  return 0;
}
