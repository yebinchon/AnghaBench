
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int ssize_t ;



ssize_t uv_fs_get_result(const uv_fs_t* req) {
  return req->result;
}
