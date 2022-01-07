
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_4__ {int (* patch_fn ) (int **,TYPE_1__*,size_t) ;} ;
typedef TYPE_1__ git_diff ;


 int assert (int) ;
 int stub1 (int **,TYPE_1__*,size_t) ;

int git_patch_from_diff(git_patch **out, git_diff *diff, size_t idx)
{
 assert(out && diff && diff->patch_fn);
 return diff->patch_fn(out, diff, idx);
}
