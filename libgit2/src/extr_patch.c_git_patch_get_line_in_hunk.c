
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t line_count; size_t line_start; } ;
typedef TYPE_1__ git_patch_hunk ;
struct TYPE_6__ {int lines; int hunks; } ;
typedef TYPE_2__ git_patch ;
typedef int git_diff_line ;


 int assert (TYPE_2__*) ;
 void* git_array_get (int ,size_t) ;
 int patch_error_outofrange (char*) ;

int git_patch_get_line_in_hunk(
 const git_diff_line **out,
 git_patch *patch,
 size_t hunk_idx,
 size_t line_of_hunk)
{
 git_patch_hunk *hunk;
 git_diff_line *line;

 assert(patch);

 if (!(hunk = git_array_get(patch->hunks, hunk_idx))) {
  if (out) *out = ((void*)0);
  return patch_error_outofrange("hunk");
 }

 if (line_of_hunk >= hunk->line_count ||
  !(line = git_array_get(
   patch->lines, hunk->line_start + line_of_hunk))) {
  if (out) *out = ((void*)0);
  return patch_error_outofrange("line");
 }

 if (out) *out = line;
 return 0;
}
