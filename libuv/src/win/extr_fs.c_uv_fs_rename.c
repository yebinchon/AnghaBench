
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int uv_fs_t ;
typedef int * uv_fs_cb ;


 int INIT (int ) ;
 int POST ;
 int UV_FS_RENAME ;
 int fs__capture_path (int *,char const*,char const*,int ) ;
 int uv_translate_sys_error (int) ;

int uv_fs_rename(uv_loop_t* loop, uv_fs_t* req, const char* path,
    const char* new_path, uv_fs_cb cb) {
  int err;

  INIT(UV_FS_RENAME);
  err = fs__capture_path(req, path, new_path, cb != ((void*)0));
  if (err) {
    return uv_translate_sys_error(err);
  }

  POST;
}
