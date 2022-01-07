
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; int ic; int * dir; } ;
typedef TYPE_1__ git_path_diriter ;


 int closedir (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_iconv_clear (int *) ;

void git_path_diriter_free(git_path_diriter *diriter)
{
 if (diriter == ((void*)0))
  return;

 if (diriter->dir) {
  closedir(diriter->dir);
  diriter->dir = ((void*)0);
 }





 git_buf_dispose(&diriter->path);
}
