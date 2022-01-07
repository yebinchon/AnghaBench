
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_3__ {int * poll_ctx; } ;
typedef TYPE_1__ uv_fs_poll_t ;


 int UV_FS_POLL ;
 int uv__handle_init (int *,int *,int ) ;

int uv_fs_poll_init(uv_loop_t* loop, uv_fs_poll_t* handle) {
  uv__handle_init(loop, (uv_handle_t*)handle, UV_FS_POLL);
  handle->poll_ctx = ((void*)0);
  return 0;
}
