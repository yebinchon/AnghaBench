
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_loop_t ;
struct TYPE_3__ {int * path; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_fs_cb ;


 int INIT (int ) ;
 int MKDTEMP ;
 int POST ;
 int UV_ENOMEM ;
 int * uv__strdup (char const*) ;

int uv_fs_mkdtemp(uv_loop_t* loop,
                  uv_fs_t* req,
                  const char* tpl,
                  uv_fs_cb cb) {
  INIT(MKDTEMP);
  req->path = uv__strdup(tpl);
  if (req->path == ((void*)0))
    return UV_ENOMEM;
  POST;
}
