
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fs_type; scalar_t__ result; TYPE_2__* ptr; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_8__ {int nentries; int dirents; } ;
typedef TYPE_2__ uv_dir_t ;


 int ARRAY_SIZE (int ) ;
 int ASSERT (int) ;
 scalar_t__ UV_FS_OPENDIR ;
 int dirents ;
 int empty_opendir_cb_count ;
 int empty_readdir_cb ;
 TYPE_1__ opendir_req ;
 int readdir_req ;
 int uv_default_loop () ;
 int uv_fs_readdir (int ,int *,TYPE_2__*,int ) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;

__attribute__((used)) static void empty_opendir_cb(uv_fs_t* req) {
  uv_dir_t* dir;
  int r;

  ASSERT(req == &opendir_req);
  ASSERT(req->fs_type == UV_FS_OPENDIR);
  ASSERT(req->result == 0);
  ASSERT(req->ptr != ((void*)0));
  dir = req->ptr;
  dir->dirents = dirents;
  dir->nentries = ARRAY_SIZE(dirents);
  r = uv_fs_readdir(uv_default_loop(),
                    &readdir_req,
                    dir,
                    empty_readdir_cb);
  ASSERT(r == 0);
  uv_fs_req_cleanup(req);
  ++empty_opendir_cb_count;
}
