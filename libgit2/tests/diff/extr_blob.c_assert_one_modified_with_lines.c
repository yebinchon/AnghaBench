
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lines; int files_binary; int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_MODIFIED ;
 int cl_assert_equal_i (int,int ) ;

__attribute__((used)) static void assert_one_modified_with_lines(diff_expects *expected, int lines)
{
 cl_assert_equal_i(1, expected->files);
 cl_assert_equal_i(1, expected->file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, expected->files_binary);
 cl_assert_equal_i(lines, expected->lines);
}
