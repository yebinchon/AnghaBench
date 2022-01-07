
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* delta; } ;
typedef TYPE_1__ git_patch ;
typedef int git_diff_delta ;


 int assert (TYPE_1__ const*) ;

const git_diff_delta *git_patch_get_delta(const git_patch *patch)
{
 assert(patch);
 return patch->delta;
}
