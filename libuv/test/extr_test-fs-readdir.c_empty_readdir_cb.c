
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fs_type; scalar_t__ result; int * ptr; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv_dir_t ;


 int ASSERT (int) ;
 scalar_t__ UV_FS_READDIR ;
 int closedir_req ;
 int empty_closedir_cb ;
 TYPE_1__ readdir_req ;
 int uv_default_loop () ;
 int uv_fs_closedir (int ,int *,int *,int ) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void empty_readdir_cb(uv_fs_t* req) {
  uv_dir_t* dir;
  int r;

  ASSERT(req == &readdir_req);
  ASSERT(req->fs_type == UV_FS_READDIR);
  ASSERT(req->result == 0);
  dir = req->ptr;
  uv_fs_req_cleanup(req);
  r = uv_fs_closedir(uv_default_loop(),
                     &closedir_req,
                     dir,
                     empty_closedir_cb);
  ASSERT(r == 0);
}
