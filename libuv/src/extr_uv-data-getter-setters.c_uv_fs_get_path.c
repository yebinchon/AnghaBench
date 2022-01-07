
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* path; } ;
typedef TYPE_1__ uv_fs_t ;



const char* uv_fs_get_path(const uv_fs_t* req) {
  return req->path;
}
