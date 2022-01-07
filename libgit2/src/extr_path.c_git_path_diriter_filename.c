
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; char* ptr; } ;
struct TYPE_5__ {int parent_len; TYPE_1__ path; } ;
typedef TYPE_2__ git_path_diriter ;


 int assert (int) ;

int git_path_diriter_filename(
 const char **out,
 size_t *out_len,
 git_path_diriter *diriter)
{
 assert(out && out_len && diriter);

 assert(diriter->path.size > diriter->parent_len);

 *out = &diriter->path.ptr[diriter->parent_len+1];
 *out_len = diriter->path.size - diriter->parent_len - 1;
 return 0;
}
