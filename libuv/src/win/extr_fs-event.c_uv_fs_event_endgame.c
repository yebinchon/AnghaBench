
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_4__ {int flags; int * buffer; int req_pending; } ;
typedef TYPE_1__ uv_fs_event_t ;


 int UV_HANDLE_CLOSED ;
 int UV_HANDLE_CLOSING ;
 int assert (int) ;
 int uv__free (int *) ;
 int uv__handle_close (TYPE_1__*) ;

void uv_fs_event_endgame(uv_loop_t* loop, uv_fs_event_t* handle) {
  if ((handle->flags & UV_HANDLE_CLOSING) && !handle->req_pending) {
    assert(!(handle->flags & UV_HANDLE_CLOSED));

    if (handle->buffer) {
      uv__free(handle->buffer);
      handle->buffer = ((void*)0);
    }

    uv__handle_close(handle);
  }
}
