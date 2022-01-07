
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_6__ {int size; int id; } ;
struct TYPE_5__ {int size; int id; } ;
struct TYPE_7__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_blob ;


 int GIT_DELTA_MODIFIED ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_oid (int ,int *) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_blob_id (int *) ;
 int git_blob_rawsize (int *) ;
 TYPE_3__* git_patch_get_delta (int *) ;
 int git_patch_line_stats (size_t*,size_t*,size_t*,int *) ;
 scalar_t__ git_patch_num_hunks (int *) ;
 int git_patch_num_lines_in_hunk (int *,int) ;

__attribute__((used)) static void assert_patch_matches_blobs(
 git_patch *p, git_blob *a, git_blob *b,
 int hunks, int l0, int l1, int ctxt, int adds, int dels)
{
 const git_diff_delta *delta;
 size_t tc, ta, td;

 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));

 cl_assert_equal_i(GIT_DELTA_MODIFIED, delta->status);
 cl_assert_equal_oid(git_blob_id(a), &delta->old_file.id);
 cl_assert_equal_sz(git_blob_rawsize(a), delta->old_file.size);
 cl_assert_equal_oid(git_blob_id(b), &delta->new_file.id);
 cl_assert_equal_sz(git_blob_rawsize(b), delta->new_file.size);

 cl_assert_equal_i(hunks, (int)git_patch_num_hunks(p));

 if (hunks > 0)
  cl_assert_equal_i(l0, git_patch_num_lines_in_hunk(p, 0));
 if (hunks > 1)
  cl_assert_equal_i(l1, git_patch_num_lines_in_hunk(p, 1));

 cl_git_pass(git_patch_line_stats(&tc, &ta, &td, p));
 cl_assert_equal_i(ctxt, (int)tc);
 cl_assert_equal_i(adds, (int)ta);
 cl_assert_equal_i(dels, (int)td);
}
