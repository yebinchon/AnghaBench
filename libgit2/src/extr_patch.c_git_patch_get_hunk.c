
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t line_count; int hunk; } ;
typedef TYPE_1__ git_patch_hunk ;
struct TYPE_7__ {int hunks; } ;
typedef TYPE_2__ git_patch ;
typedef int git_diff_hunk ;


 int assert (TYPE_2__*) ;
 TYPE_1__* git_array_get (int ,size_t) ;
 int patch_error_outofrange (char*) ;

int git_patch_get_hunk(
 const git_diff_hunk **out,
 size_t *lines_in_hunk,
 git_patch *patch,
 size_t hunk_idx)
{
 git_patch_hunk *hunk;
 assert(patch);

 hunk = git_array_get(patch->hunks, hunk_idx);

 if (!hunk) {
  if (out) *out = ((void*)0);
  if (lines_in_hunk) *lines_in_hunk = 0;
  return patch_error_outofrange("hunk");
 }

 if (out) *out = &hunk->hunk;
 if (lines_in_hunk) *lines_in_hunk = hunk->line_count;
 return 0;
}
