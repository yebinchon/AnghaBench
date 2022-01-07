
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_ADDED ;
 size_t GIT_DELTA_CONFLICTED ;
 size_t GIT_DELTA_DELETED ;
 size_t GIT_DELTA_MODIFIED ;
 int GIT_DIFF_REVERSE ;
 int cl_assert_equal_i (int,int ) ;
 int do_conflicted_diff (TYPE_1__*,int ) ;

void test_diff_index__reports_conflicts_when_reversed(void)
{
 diff_expects exp;

 do_conflicted_diff(&exp, GIT_DIFF_REVERSE);

 cl_assert_equal_i(8, exp.files);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_ADDED]);
 cl_assert_equal_i(3, exp.file_status[GIT_DELTA_DELETED]);
 cl_assert_equal_i(2, exp.file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(1, exp.file_status[GIT_DELTA_CONFLICTED]);

 cl_assert_equal_i(7, exp.hunks);

 cl_assert_equal_i(9, exp.lines);
 cl_assert_equal_i(2, exp.line_ctxt);
 cl_assert_equal_i(2, exp.line_adds);
 cl_assert_equal_i(5, exp.line_dels);
}
