
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ uv_req_t ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_7__ {scalar_t__ type; int flags; int (* async_cb ) (TYPE_2__*) ;scalar_t__ async_sent; } ;
typedef TYPE_2__ uv_async_t ;


 scalar_t__ UV_ASYNC ;
 int UV_HANDLE_CLOSING ;
 scalar_t__ UV_WAKEUP ;
 int assert (int) ;
 int stub1 (TYPE_2__*) ;
 int uv_want_endgame (int *,int *) ;

void uv_process_async_wakeup_req(uv_loop_t* loop, uv_async_t* handle,
    uv_req_t* req) {
  assert(handle->type == UV_ASYNC);
  assert(req->type == UV_WAKEUP);

  handle->async_sent = 0;

  if (handle->flags & UV_HANDLE_CLOSING) {
    uv_want_endgame(loop, (uv_handle_t*)handle);
  } else if (handle->async_cb != ((void*)0)) {
    handle->async_cb(handle);
  }
}
