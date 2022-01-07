
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_6__ {double atime; double mtime; } ;
struct TYPE_7__ {TYPE_1__ time; } ;
struct TYPE_8__ {TYPE_2__ fs; } ;
typedef TYPE_3__ uv_fs_t ;
typedef int * uv_fs_cb ;


 int INIT (int ) ;
 int POST ;
 int UV_FS_UTIME ;
 int fs__capture_path (TYPE_3__*,char const*,int *,int ) ;
 int uv_translate_sys_error (int) ;

int uv_fs_utime(uv_loop_t* loop, uv_fs_t* req, const char* path, double atime,
    double mtime, uv_fs_cb cb) {
  int err;

  INIT(UV_FS_UTIME);
  err = fs__capture_path(req, path, ((void*)0), cb != ((void*)0));
  if (err) {
    return uv_translate_sys_error(err);
  }

  req->fs.time.atime = atime;
  req->fs.time.mtime = mtime;
  POST;
}
