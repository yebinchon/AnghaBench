
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** ptr; scalar_t__ nbufs; int path; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uv__dirent_t ;
typedef int ssize_t ;


 int free (int **) ;
 int scandir (int ,int ***,int ,int ) ;
 int uv__fs_scandir_filter ;
 int uv__fs_scandir_sort ;

__attribute__((used)) static ssize_t uv__fs_scandir(uv_fs_t* req) {
  uv__dirent_t** dents;
  int n;

  dents = ((void*)0);
  n = scandir(req->path, &dents, uv__fs_scandir_filter, uv__fs_scandir_sort);


  req->nbufs = 0;

  if (n == 0) {



    free(dents);
    dents = ((void*)0);
  } else if (n == -1) {
    return n;
  }

  req->ptr = dents;

  return n;
}
