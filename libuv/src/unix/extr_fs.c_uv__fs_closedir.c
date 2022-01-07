
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* ptr; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_6__ {int * dir; } ;
typedef TYPE_2__ uv_dir_t ;


 int closedir (int *) ;
 int uv__free (TYPE_2__*) ;

__attribute__((used)) static int uv__fs_closedir(uv_fs_t* req) {
  uv_dir_t* dir;

  dir = req->ptr;

  if (dir->dir != ((void*)0)) {
    closedir(dir->dir);
    dir->dir = ((void*)0);
  }

  uv__free(req->ptr);
  req->ptr = ((void*)0);
  return 0;
}
