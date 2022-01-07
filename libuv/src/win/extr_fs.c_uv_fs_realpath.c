
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int uv_fs_t ;
typedef int * uv_fs_cb ;


 int INIT (int ) ;
 int POST ;
 int UV_EINVAL ;
 int UV_FS_REALPATH ;
 int fs__capture_path (int *,char const*,int *,int ) ;
 int uv_translate_sys_error (int) ;

int uv_fs_realpath(uv_loop_t* loop, uv_fs_t* req, const char* path,
    uv_fs_cb cb) {
  int err;

  INIT(UV_FS_REALPATH);

  if (!path) {
    return UV_EINVAL;
  }

  err = fs__capture_path(req, path, ((void*)0), cb != ((void*)0));
  if (err) {
    return uv_translate_sys_error(err);
  }

  POST;
}
