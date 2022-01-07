
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hunks; } ;
typedef TYPE_1__ git_patch ;


 int assert (TYPE_1__ const*) ;
 size_t git_array_size (int ) ;

size_t git_patch_num_hunks(const git_patch *patch)
{
 assert(patch);
 return git_array_size(patch->hunks);
}
