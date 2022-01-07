
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {int * ptr; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_dir_t ;


 int CLOSEDIR ;
 int INIT (int ) ;
 int POST ;
 int UV_EINVAL ;

int uv_fs_closedir(uv_loop_t* loop,
                   uv_fs_t* req,
                   uv_dir_t* dir,
                   uv_fs_cb cb) {
  INIT(CLOSEDIR);

  if (dir == ((void*)0))
    return UV_EINVAL;

  req->ptr = dir;
  POST;
}
