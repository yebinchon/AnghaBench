
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_uid_t ;
typedef int uv_loop_t ;
typedef int uv_gid_t ;
typedef int uv_fs_t ;
typedef int uv_fs_cb ;
typedef int uv_file ;


 int INIT (int ) ;
 int POST ;
 int UV_FS_FCHOWN ;

int uv_fs_fchown(uv_loop_t* loop, uv_fs_t* req, uv_file fd, uv_uid_t uid,
    uv_gid_t gid, uv_fs_cb cb) {
  INIT(UV_FS_FCHOWN);
  POST;
}
