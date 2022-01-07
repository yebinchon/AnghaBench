
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_3__ {int hunks; int lines; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t git_patch_num_hunks (int *) ;
 scalar_t__ git_patch_num_lines_in_hunk (int *,size_t) ;

__attribute__((used)) static void iterate_over_patch(git_patch *patch, diff_expects *exp)
{
 size_t h, num_h = git_patch_num_hunks(patch), num_l;

 exp->files++;
 exp->hunks += (int)num_h;


 for (h = 1, num_l = 0; h <= num_h; ++h)
  num_l += git_patch_num_lines_in_hunk(patch, num_h - h);

 exp->lines += (int)num_l;
}
