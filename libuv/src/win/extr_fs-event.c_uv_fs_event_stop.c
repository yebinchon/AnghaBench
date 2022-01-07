
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dir_handle; int * dirw; int * path; int * short_filew; int * filew; } ;
typedef TYPE_1__ uv_fs_event_t ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int uv__free (int *) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__is_active (TYPE_1__*) ;

int uv_fs_event_stop(uv_fs_event_t* handle) {
  if (!uv__is_active(handle))
    return 0;

  if (handle->dir_handle != INVALID_HANDLE_VALUE) {
    CloseHandle(handle->dir_handle);
    handle->dir_handle = INVALID_HANDLE_VALUE;
  }

  uv__handle_stop(handle);

  if (handle->filew) {
    uv__free(handle->filew);
    handle->filew = ((void*)0);
  }

  if (handle->short_filew) {
    uv__free(handle->short_filew);
    handle->short_filew = ((void*)0);
  }

  if (handle->path) {
    uv__free(handle->path);
    handle->path = ((void*)0);
  }

  if (handle->dirw) {
    uv__free(handle->dirw);
    handle->dirw = ((void*)0);
  }

  return 0;
}
