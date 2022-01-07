
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int uv_fs_t ;
typedef int uv_fs_cb ;


 int INIT (int ) ;
 int OPENDIR ;
 int PATH ;
 int POST ;

int uv_fs_opendir(uv_loop_t* loop,
                  uv_fs_t* req,
                  const char* path,
                  uv_fs_cb cb) {
  INIT(OPENDIR);
  PATH;
  POST;
}
