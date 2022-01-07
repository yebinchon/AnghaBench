
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_8__ {TYPE_4__* bufsml; int offset; void* fd_out; } ;
struct TYPE_9__ {TYPE_2__ info; } ;
struct TYPE_7__ {void* fd; } ;
struct TYPE_11__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_5__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef void* uv_file ;
typedef int int64_t ;
struct TYPE_10__ {size_t len; } ;


 int INIT (int ) ;
 int POST ;
 int UV_FS_SENDFILE ;

int uv_fs_sendfile(uv_loop_t* loop, uv_fs_t* req, uv_file fd_out,
    uv_file fd_in, int64_t in_offset, size_t length, uv_fs_cb cb) {
  INIT(UV_FS_SENDFILE);
  req->file.fd = fd_in;
  req->fs.info.fd_out = fd_out;
  req->fs.info.offset = in_offset;
  req->fs.info.bufsml[0].len = length;
  POST;
}
