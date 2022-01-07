
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* ptr; } ;
typedef TYPE_1__ uv_fs_t ;
struct TYPE_6__ {int * name; int type; } ;
typedef TYPE_2__ uv_dirent_t ;
struct TYPE_7__ {unsigned int nentries; TYPE_2__* dirents; int dir; } ;
typedef TYPE_3__ uv_dir_t ;
struct dirent {int d_name; } ;


 scalar_t__ errno ;
 struct dirent* readdir (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int uv__free (char*) ;
 int uv__fs_get_dirent_type (struct dirent*) ;
 int * uv__strdup (int ) ;

__attribute__((used)) static int uv__fs_readdir(uv_fs_t* req) {
  uv_dir_t* dir;
  uv_dirent_t* dirent;
  struct dirent* res;
  unsigned int dirent_idx;
  unsigned int i;

  dir = req->ptr;
  dirent_idx = 0;

  while (dirent_idx < dir->nentries) {


    errno = 0;
    res = readdir(dir->dir);

    if (res == ((void*)0)) {
      if (errno != 0)
        goto error;
      break;
    }

    if (strcmp(res->d_name, ".") == 0 || strcmp(res->d_name, "..") == 0)
      continue;

    dirent = &dir->dirents[dirent_idx];
    dirent->name = uv__strdup(res->d_name);

    if (dirent->name == ((void*)0))
      goto error;

    dirent->type = uv__fs_get_dirent_type(res);
    ++dirent_idx;
  }

  return dirent_idx;

error:
  for (i = 0; i < dirent_idx; ++i) {
    uv__free((char*) dir->dirents[i].name);
    dir->dirents[i].name = ((void*)0);
  }

  return -1;
}
