
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {scalar_t__ type; int flags; int async_req; int async_sent; int * loop; } ;
typedef TYPE_1__ uv_async_t ;


 int POST_COMPLETION_FOR_REQ (int *,int *) ;
 scalar_t__ UV_ASYNC ;
 int UV_HANDLE_CLOSING ;
 int assert (int) ;
 int uv__atomic_exchange_set (int *) ;

int uv_async_send(uv_async_t* handle) {
  uv_loop_t* loop = handle->loop;

  if (handle->type != UV_ASYNC) {

    return -1;
  }



  assert(!(handle->flags & UV_HANDLE_CLOSING));

  if (!uv__atomic_exchange_set(&handle->async_sent)) {
    POST_COMPLETION_FOR_REQ(loop, &handle->async_req);
  }

  return 0;
}
