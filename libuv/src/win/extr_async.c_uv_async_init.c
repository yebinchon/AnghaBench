
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ uv_req_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_7__ {TYPE_1__ async_req; int async_cb; scalar_t__ async_sent; } ;
typedef TYPE_2__ uv_async_t ;
typedef int uv_async_cb ;


 int UV_ASYNC ;
 int UV_REQ_INIT (TYPE_1__*,int ) ;
 int UV_WAKEUP ;
 int uv__handle_init (int *,int *,int ) ;
 int uv__handle_start (TYPE_2__*) ;

int uv_async_init(uv_loop_t* loop, uv_async_t* handle, uv_async_cb async_cb) {
  uv_req_t* req;

  uv__handle_init(loop, (uv_handle_t*) handle, UV_ASYNC);
  handle->async_sent = 0;
  handle->async_cb = async_cb;

  req = &handle->async_req;
  UV_REQ_INIT(req, UV_WAKEUP);
  req->data = handle;

  uv__handle_start(handle);

  return 0;
}
