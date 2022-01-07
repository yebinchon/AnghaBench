
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_4__ {int ptr; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
typedef TYPE_2__ git_path_diriter ;


 int assert (int) ;
 int git_path_lstat (int ,struct stat*) ;

int git_path_diriter_stat(struct stat *out, git_path_diriter *diriter)
{
 assert(out && diriter);

 return git_path_lstat(diriter->path.ptr, out);
}
