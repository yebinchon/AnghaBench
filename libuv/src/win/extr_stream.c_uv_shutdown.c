
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* shutdown_req; } ;
struct TYPE_12__ {TYPE_1__ conn; } ;
struct TYPE_13__ {int flags; int reqs_pending; TYPE_2__ stream; int * loop; } ;
typedef TYPE_3__ uv_stream_t ;
struct TYPE_14__ {int cb; TYPE_3__* handle; } ;
typedef TYPE_4__ uv_shutdown_t ;
typedef int uv_shutdown_cb ;
typedef int uv_loop_t ;
typedef int uv_handle_t ;


 int REGISTER_HANDLE_REQ (int *,TYPE_3__*,TYPE_4__*) ;
 int UV_ENOTCONN ;
 int UV_HANDLE_SHUTTING ;
 int UV_HANDLE_WRITABLE ;
 int UV_REQ_INIT (TYPE_4__*,int ) ;
 int UV_SHUTDOWN ;
 scalar_t__ uv__is_closing (TYPE_3__*) ;
 int uv_want_endgame (int *,int *) ;

int uv_shutdown(uv_shutdown_t* req, uv_stream_t* handle, uv_shutdown_cb cb) {
  uv_loop_t* loop = handle->loop;

  if (!(handle->flags & UV_HANDLE_WRITABLE) ||
      handle->flags & UV_HANDLE_SHUTTING ||
      uv__is_closing(handle)) {
    return UV_ENOTCONN;
  }

  UV_REQ_INIT(req, UV_SHUTDOWN);
  req->handle = handle;
  req->cb = cb;

  handle->flags &= ~UV_HANDLE_WRITABLE;
  handle->flags |= UV_HANDLE_SHUTTING;
  handle->stream.conn.shutdown_req = req;
  handle->reqs_pending++;
  REGISTER_HANDLE_REQ(loop, handle, req);

  uv_want_endgame(loop, (uv_handle_t*)handle);

  return 0;
}
