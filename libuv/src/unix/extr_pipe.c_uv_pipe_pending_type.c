
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int accepted_fd; int ipc; } ;
typedef TYPE_1__ uv_pipe_t ;
typedef int uv_handle_type ;


 int UV_UNKNOWN_HANDLE ;
 int uv__handle_type (int) ;

uv_handle_type uv_pipe_pending_type(uv_pipe_t* handle) {
  if (!handle->ipc)
    return UV_UNKNOWN_HANDLE;

  if (handle->accepted_fd == -1)
    return UV_UNKNOWN_HANDLE;
  else
    return uv__handle_type(handle->accepted_fd);
}
