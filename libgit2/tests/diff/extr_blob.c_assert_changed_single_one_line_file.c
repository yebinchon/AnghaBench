
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t git_delta_t ;
struct TYPE_3__ {int line_dels; int line_adds; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_DELETED ;
 int cl_assert_equal_i (int,int ) ;

__attribute__((used)) static void assert_changed_single_one_line_file(
 diff_expects *expected, git_delta_t mod)
{
 cl_assert_equal_i(1, expected->files);
 cl_assert_equal_i(1, expected->file_status[mod]);
 cl_assert_equal_i(1, expected->hunks);
 cl_assert_equal_i(1, expected->lines);

 if (mod == GIT_DELTA_ADDED)
  cl_assert_equal_i(1, expected->line_adds);
 else if (mod == GIT_DELTA_DELETED)
  cl_assert_equal_i(1, expected->line_dels);
}
