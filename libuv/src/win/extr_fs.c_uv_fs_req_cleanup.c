
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * bufs; int * new_pathw; int * bufsml; } ;
struct TYPE_10__ {TYPE_2__ info; } ;
struct TYPE_8__ {int * pathw; } ;
struct TYPE_11__ {int flags; scalar_t__ fs_type; int * ptr; TYPE_3__ fs; TYPE_1__ file; int * path; } ;
typedef TYPE_4__ uv_fs_t ;


 int UV_FS_CLEANEDUP ;
 int UV_FS_FREE_PATHS ;
 int UV_FS_FREE_PTR ;
 scalar_t__ UV_FS_READDIR ;
 scalar_t__ UV_FS_SCANDIR ;
 int uv__free (int *) ;
 int uv__fs_readdir_cleanup (TYPE_4__*) ;
 int uv__fs_scandir_cleanup (TYPE_4__*) ;

void uv_fs_req_cleanup(uv_fs_t* req) {
  if (req == ((void*)0))
    return;

  if (req->flags & UV_FS_CLEANEDUP)
    return;

  if (req->flags & UV_FS_FREE_PATHS)
    uv__free(req->file.pathw);

  if (req->flags & UV_FS_FREE_PTR) {
    if (req->fs_type == UV_FS_SCANDIR && req->ptr != ((void*)0))
      uv__fs_scandir_cleanup(req);
    else if (req->fs_type == UV_FS_READDIR)
      uv__fs_readdir_cleanup(req);
    else
      uv__free(req->ptr);
  }

  if (req->fs.info.bufs != req->fs.info.bufsml)
    uv__free(req->fs.info.bufs);

  req->path = ((void*)0);
  req->file.pathw = ((void*)0);
  req->fs.info.new_pathw = ((void*)0);
  req->fs.info.bufs = ((void*)0);
  req->ptr = ((void*)0);

  req->flags |= UV_FS_CLEANEDUP;
}
