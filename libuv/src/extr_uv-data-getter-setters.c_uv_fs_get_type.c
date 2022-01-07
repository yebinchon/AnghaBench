
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_fs_type ;
struct TYPE_3__ {int fs_type; } ;
typedef TYPE_1__ uv_fs_t ;



uv_fs_type uv_fs_get_type(const uv_fs_t* req) {
  return req->fs_type;
}
