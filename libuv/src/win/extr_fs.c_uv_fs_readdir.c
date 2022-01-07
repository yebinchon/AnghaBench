
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_5__ {TYPE_2__* ptr; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;
struct TYPE_6__ {scalar_t__ dir_handle; int * dirents; } ;
typedef TYPE_2__ uv_dir_t ;


 int INIT (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int POST ;
 int UV_EINVAL ;
 int UV_FS_READDIR ;

int uv_fs_readdir(uv_loop_t* loop,
                  uv_fs_t* req,
                  uv_dir_t* dir,
                  uv_fs_cb cb) {
  INIT(UV_FS_READDIR);

  if (dir == ((void*)0) ||
      dir->dirents == ((void*)0) ||
      dir->dir_handle == INVALID_HANDLE_VALUE) {
    return UV_EINVAL;
  }

  req->ptr = dir;
  POST;
}
