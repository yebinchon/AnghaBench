
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {TYPE_3__ req; int * dirw; int * short_filew; int * filew; scalar_t__ req_pending; int * buffer; int dir_handle; } ;
typedef TYPE_1__ uv_fs_event_t ;


 int INVALID_HANDLE_VALUE ;
 int UV_FS_EVENT ;
 int UV_FS_EVENT_REQ ;
 int UV_REQ_INIT (TYPE_3__*,int ) ;
 int uv__handle_init (int *,int *,int ) ;

int uv_fs_event_init(uv_loop_t* loop, uv_fs_event_t* handle) {
  uv__handle_init(loop, (uv_handle_t*) handle, UV_FS_EVENT);
  handle->dir_handle = INVALID_HANDLE_VALUE;
  handle->buffer = ((void*)0);
  handle->req_pending = 0;
  handle->filew = ((void*)0);
  handle->short_filew = ((void*)0);
  handle->dirw = ((void*)0);

  UV_REQ_INIT(&handle->req, UV_FS_EVENT_REQ);
  handle->req.data = handle;

  return 0;
}
