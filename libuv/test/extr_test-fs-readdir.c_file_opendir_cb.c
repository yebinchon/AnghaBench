
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fs_type; scalar_t__ result; int * ptr; } ;
typedef TYPE_1__ uv_fs_t ;


 int ASSERT (int) ;
 scalar_t__ UV_ENOTDIR ;
 scalar_t__ UV_FS_OPENDIR ;
 int file_opendir_cb_count ;
 TYPE_1__ opendir_req ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void file_opendir_cb(uv_fs_t* req) {
  ASSERT(req == &opendir_req);
  ASSERT(req->fs_type == UV_FS_OPENDIR);
  ASSERT(req->result == UV_ENOTDIR);
  ASSERT(req->ptr == ((void*)0));

  uv_fs_req_cleanup(req);
  ++file_opendir_cb_count;
}
