
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;


 int COPYFILE ;
 int INIT (int ) ;
 int PATH2 ;
 int POST ;
 int UV_EINVAL ;
 int UV_FS_COPYFILE_EXCL ;
 int UV_FS_COPYFILE_FICLONE ;
 int UV_FS_COPYFILE_FICLONE_FORCE ;

int uv_fs_copyfile(uv_loop_t* loop,
                   uv_fs_t* req,
                   const char* path,
                   const char* new_path,
                   int flags,
                   uv_fs_cb cb) {
  INIT(COPYFILE);

  if (flags & ~(UV_FS_COPYFILE_EXCL |
                UV_FS_COPYFILE_FICLONE |
                UV_FS_COPYFILE_FICLONE_FORCE)) {
    return UV_EINVAL;
  }

  PATH2;
  req->flags = flags;
  POST;
}
