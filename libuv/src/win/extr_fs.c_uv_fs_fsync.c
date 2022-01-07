
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
typedef TYPE_2__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_file ;


 int INIT (int ) ;
 int POST ;
 int UV_FS_FSYNC ;

int uv_fs_fsync(uv_loop_t* loop, uv_fs_t* req, uv_file fd, uv_fs_cb cb) {
  INIT(UV_FS_FSYNC);
  req->file.fd = fd;
  POST;
}
