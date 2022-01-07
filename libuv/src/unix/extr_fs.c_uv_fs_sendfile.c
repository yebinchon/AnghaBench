
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_5__ {TYPE_1__* bufsml; int off; void* file; void* flags; } ;
typedef TYPE_2__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef void* uv_file ;
typedef int int64_t ;
struct TYPE_4__ {size_t len; } ;


 int INIT (int ) ;
 int POST ;
 int SENDFILE ;

int uv_fs_sendfile(uv_loop_t* loop,
                   uv_fs_t* req,
                   uv_file out_fd,
                   uv_file in_fd,
                   int64_t off,
                   size_t len,
                   uv_fs_cb cb) {
  INIT(SENDFILE);
  req->flags = in_fd;
  req->file = out_fd;
  req->off = off;
  req->bufsml[0].len = len;
  POST;
}
