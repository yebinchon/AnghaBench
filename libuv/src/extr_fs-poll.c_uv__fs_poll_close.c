
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_4__ {int * poll_ctx; } ;
typedef TYPE_1__ uv_fs_poll_t ;


 int uv__make_close_pending (int *) ;
 int uv_fs_poll_stop (TYPE_1__*) ;

void uv__fs_poll_close(uv_fs_poll_t* handle) {
  uv_fs_poll_stop(handle);

  if (handle->poll_ctx == ((void*)0))
    uv__make_close_pending((uv_handle_t*)handle);
}
