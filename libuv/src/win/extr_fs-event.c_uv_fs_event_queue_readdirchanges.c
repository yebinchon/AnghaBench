
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_req_t ;
typedef int uv_loop_t ;
struct TYPE_6__ {int overlapped; } ;
struct TYPE_7__ {TYPE_1__ io; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_8__ {scalar_t__ dir_handle; int req_pending; int flags; TYPE_5__ req; int buffer; } ;
typedef TYPE_3__ uv_fs_event_t ;


 int FALSE ;
 int FILE_NOTIFY_CHANGE_ATTRIBUTES ;
 int FILE_NOTIFY_CHANGE_CREATION ;
 int FILE_NOTIFY_CHANGE_DIR_NAME ;
 int FILE_NOTIFY_CHANGE_FILE_NAME ;
 int FILE_NOTIFY_CHANGE_LAST_ACCESS ;
 int FILE_NOTIFY_CHANGE_LAST_WRITE ;
 int FILE_NOTIFY_CHANGE_SECURITY ;
 int FILE_NOTIFY_CHANGE_SIZE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ReadDirectoryChangesW (scalar_t__,int ,int ,int ,int,int *,int *,int *) ;
 int SET_REQ_ERROR (TYPE_5__*,int ) ;
 int TRUE ;
 int UV_FS_EVENT_RECURSIVE ;
 int assert (int) ;
 int memset (int *,int ,int) ;
 int uv_directory_watcher_buffer_size ;
 int uv_insert_pending_req (int *,int *) ;

__attribute__((used)) static void uv_fs_event_queue_readdirchanges(uv_loop_t* loop,
    uv_fs_event_t* handle) {
  assert(handle->dir_handle != INVALID_HANDLE_VALUE);
  assert(!handle->req_pending);

  memset(&(handle->req.u.io.overlapped), 0,
         sizeof(handle->req.u.io.overlapped));
  if (!ReadDirectoryChangesW(handle->dir_handle,
                             handle->buffer,
                             uv_directory_watcher_buffer_size,
                             (handle->flags & UV_FS_EVENT_RECURSIVE) ? TRUE : FALSE,
                             FILE_NOTIFY_CHANGE_FILE_NAME |
                               FILE_NOTIFY_CHANGE_DIR_NAME |
                               FILE_NOTIFY_CHANGE_ATTRIBUTES |
                               FILE_NOTIFY_CHANGE_SIZE |
                               FILE_NOTIFY_CHANGE_LAST_WRITE |
                               FILE_NOTIFY_CHANGE_LAST_ACCESS |
                               FILE_NOTIFY_CHANGE_CREATION |
                               FILE_NOTIFY_CHANGE_SECURITY,
                             ((void*)0),
                             &handle->req.u.io.overlapped,
                             ((void*)0))) {

    SET_REQ_ERROR(&handle->req, GetLastError());
    uv_insert_pending_req(loop, (uv_req_t*)&handle->req);
  }

  handle->req_pending = 1;
}
