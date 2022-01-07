
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ files_binary; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_MODIFIED ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int ) ;

__attribute__((used)) static void assert_binary_blobs_comparison(diff_expects *expected)
{
 cl_assert(expected->files_binary > 0);

 cl_assert_equal_i(1, expected->files);
 cl_assert_equal_i(1, expected->file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, expected->hunks);
 cl_assert_equal_i(0, expected->lines);
}
