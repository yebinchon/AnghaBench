
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_stat_t ;
struct TYPE_3__ {int statbuf; } ;
typedef TYPE_1__ uv_fs_t ;



uv_stat_t* uv_fs_get_statbuf(uv_fs_t* req) {
  return &req->statbuf;
}
