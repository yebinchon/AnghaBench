
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_7__ {int mode; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_6__ {int fd; } ;
struct TYPE_9__ {TYPE_3__ fs; TYPE_1__ file; } ;
typedef TYPE_4__ uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_file ;


 int INIT (int ) ;
 int POST ;
 int UV_FS_FCHMOD ;

int uv_fs_fchmod(uv_loop_t* loop, uv_fs_t* req, uv_file fd, int mode,
    uv_fs_cb cb) {
  INIT(UV_FS_FCHMOD);
  req->file.fd = fd;
  req->fs.info.mode = mode;
  POST;
}
