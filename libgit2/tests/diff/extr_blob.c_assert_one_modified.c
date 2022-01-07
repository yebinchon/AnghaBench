
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line_dels; int line_adds; int line_ctxt; int lines; int hunks; int files_binary; int * file_status; int files; } ;
typedef TYPE_1__ diff_expects ;


 size_t GIT_DELTA_MODIFIED ;
 int cl_assert_equal_i (int,int ) ;

__attribute__((used)) static void assert_one_modified(
 int hunks, int lines, int ctxt, int adds, int dels, diff_expects *exp)
{
 cl_assert_equal_i(1, exp->files);
 cl_assert_equal_i(1, exp->file_status[GIT_DELTA_MODIFIED]);
 cl_assert_equal_i(0, exp->files_binary);

 cl_assert_equal_i(hunks, exp->hunks);
 cl_assert_equal_i(lines, exp->lines);
 cl_assert_equal_i(ctxt, exp->line_ctxt);
 cl_assert_equal_i(adds, exp->line_adds);
 cl_assert_equal_i(dels, exp->line_dels);
}
