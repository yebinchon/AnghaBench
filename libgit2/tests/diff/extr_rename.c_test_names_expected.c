
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rename_expected {size_t idx; size_t len; int * targets; int * sources; int * status; } ;
struct TYPE_6__ {int path; } ;
struct TYPE_5__ {int path; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; int status; } ;
typedef TYPE_3__ git_diff_delta ;


 int GIT_UNUSED (float) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 scalar_t__ git__strcmp (int ,int ) ;

int test_names_expected(const git_diff_delta *delta, float progress, void *p)
{
 struct rename_expected *expected = p;

 GIT_UNUSED(progress);

 cl_assert(expected->idx < expected->len);

 cl_assert_equal_i(delta->status, expected->status[expected->idx]);

 cl_assert(git__strcmp(expected->sources[expected->idx],
  delta->old_file.path) == 0);
 cl_assert(git__strcmp(expected->targets[expected->idx],
  delta->new_file.path) == 0);

 expected->idx++;

 return 0;
}
