
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result; TYPE_3__* ptr; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_6__ {int * name; } ;
typedef TYPE_2__ uv_dirent_t ;
struct TYPE_7__ {TYPE_2__* dirents; } ;
typedef TYPE_3__ uv_dir_t ;


 int uv__free (char*) ;

void uv__fs_readdir_cleanup(uv_fs_t* req) {
  uv_dir_t* dir;
  uv_dirent_t* dirents;
  int i;

  if (req->ptr == ((void*)0))
    return;

  dir = req->ptr;
  dirents = dir->dirents;
  req->ptr = ((void*)0);

  if (dirents == ((void*)0))
    return;

  for (i = 0; i < req->result; ++i) {
    uv__free((char*) dirents[i].name);
    dirents[i].name = ((void*)0);
  }
}
