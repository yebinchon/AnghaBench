
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ line_count; } ;
typedef TYPE_1__ git_patch_hunk ;
struct TYPE_7__ {int hunks; } ;
typedef TYPE_2__ git_patch ;


 int assert (TYPE_2__ const*) ;
 TYPE_1__* git_array_get (int ,size_t) ;
 int patch_error_outofrange (char*) ;

int git_patch_num_lines_in_hunk(const git_patch *patch, size_t hunk_idx)
{
 git_patch_hunk *hunk;
 assert(patch);

 if (!(hunk = git_array_get(patch->hunks, hunk_idx)))
  return patch_error_outofrange("hunk");
 return (int)hunk->line_count;
}
