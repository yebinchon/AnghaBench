
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
struct TYPE_7__ {size_t status; int flags; TYPE_1__ old_file; } ;
typedef TYPE_2__ git_diff_delta ;
struct TYPE_8__ {size_t files; int* file_status; int files_binary; int * statuses; int * names; scalar_t__ debug; } ;
typedef TYPE_3__ diff_expects ;


 size_t GIT_DELTA_CONFLICTED ;
 int GIT_DIFF_FLAG_BINARY ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_s (int ,int ) ;
 int fprintf_delta (int ,TYPE_2__ const*,float) ;
 int stderr ;

int diff_file_cb(
 const git_diff_delta *delta,
 float progress,
 void *payload)
{
 diff_expects *e = payload;

 if (e->debug)
  fprintf_delta(stderr, delta, progress);

 if (e->names)
  cl_assert_equal_s(e->names[e->files], delta->old_file.path);
 if (e->statuses)
  cl_assert_equal_i(e->statuses[e->files], (int)delta->status);

 e->files++;

 if ((delta->flags & GIT_DIFF_FLAG_BINARY) != 0)
  e->files_binary++;

 cl_assert(delta->status <= GIT_DELTA_CONFLICTED);

 e->file_status[delta->status] += 1;

 return 0;
}
