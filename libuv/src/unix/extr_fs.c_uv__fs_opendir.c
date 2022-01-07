
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ptr; int path; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_7__ {int * dir; } ;
typedef TYPE_2__ uv_dir_t ;


 int * opendir (int ) ;
 int uv__free (TYPE_2__*) ;
 TYPE_2__* uv__malloc (int) ;

__attribute__((used)) static int uv__fs_opendir(uv_fs_t* req) {
  uv_dir_t* dir;

  dir = uv__malloc(sizeof(*dir));
  if (dir == ((void*)0))
    goto error;

  dir->dir = opendir(req->path);
  if (dir->dir == ((void*)0))
    goto error;

  req->ptr = dir;
  return 0;

error:
  uv__free(dir);
  req->ptr = ((void*)0);
  return -1;
}
