
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fs_type; scalar_t__ result; int * ptr; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_dirent_t ;


 int ASSERT (int) ;
 scalar_t__ UV_ENOENT ;
 scalar_t__ UV_FS_SCANDIR ;
 int scandir_cb_count ;
 TYPE_1__ scandir_req ;
 int uv_fs_req_cleanup (TYPE_1__*) ;
 scalar_t__ uv_fs_scandir_next (TYPE_1__*,int *) ;

__attribute__((used)) static void non_existent_scandir_cb(uv_fs_t* req) {
  uv_dirent_t dent;

  ASSERT(req == &scandir_req);
  ASSERT(req->fs_type == UV_FS_SCANDIR);
  ASSERT(req->result == UV_ENOENT);
  ASSERT(req->ptr == ((void*)0));
  ASSERT(UV_ENOENT == uv_fs_scandir_next(req, &dent));
  uv_fs_req_cleanup(req);
  scandir_cb_count++;
}
