
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_1__* loop; struct TYPE_5__* next_closing; } ;
typedef TYPE_2__ uv_handle_t ;
struct TYPE_4__ {TYPE_2__* closing_handles; } ;


 int UV_HANDLE_CLOSED ;
 int UV_HANDLE_CLOSING ;
 int assert (int) ;

void uv__make_close_pending(uv_handle_t* handle) {
  assert(handle->flags & UV_HANDLE_CLOSING);
  assert(!(handle->flags & UV_HANDLE_CLOSED));
  handle->next_closing = handle->loop->closing_handles;
  handle->loop->closing_handles = handle;
}
