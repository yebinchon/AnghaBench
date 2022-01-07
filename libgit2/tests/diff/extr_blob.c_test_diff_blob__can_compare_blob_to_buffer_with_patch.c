
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_oid ;
typedef int git_blob ;
struct TYPE_5__ {int status; } ;
struct TYPE_4__ {int flags; } ;


 int GIT_DELTA_ADDED ;
 int GIT_DELTA_DELETED ;
 int GIT_DELTA_MODIFIED ;
 int GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_INCLUDE_UNMODIFIED ;
 int GIT_DIFF_REVERSE ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_blob_free (int *) ;
 int git_blob_lookup_prefix (int **,int ,int *,int) ;
 int git_oid_fromstrn (int *,char*,int) ;
 int git_patch_free (int *) ;
 int git_patch_from_blob_and_buffer (int **,int *,int *,char const*,int ,int *,TYPE_1__*) ;
 TYPE_2__* git_patch_get_delta (int *) ;
 int git_patch_line_stats (size_t*,size_t*,size_t*,int *) ;
 scalar_t__ git_patch_num_hunks (int *) ;
 int git_patch_num_lines_in_hunk (int *,int ) ;
 TYPE_1__ opts ;
 int strlen (char const*) ;

void test_diff_blob__can_compare_blob_to_buffer_with_patch(void)
{
 git_patch *p;
 git_blob *a;
 git_oid a_oid;
 const char *a_content = "Hello from the root\n";
 const char *b_content = "Hello from the root\n\nSome additional lines\n\nDown here below\n\n";
 size_t tc, ta, td;


 cl_git_pass(git_oid_fromstrn(&a_oid, "45141a79", 8));
 cl_git_pass(git_blob_lookup_prefix(&a, g_repo, &a_oid, 8));


 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, a, ((void*)0), b_content, strlen(b_content), ((void*)0), &opts));

 cl_assert(p != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_MODIFIED, git_patch_get_delta(p)->status);
 cl_assert_equal_i(1, (int)git_patch_num_hunks(p));
 cl_assert_equal_i(6, git_patch_num_lines_in_hunk(p, 0));

 cl_git_pass(git_patch_line_stats(&tc, &ta, &td, p));
 cl_assert_equal_i(1, (int)tc);
 cl_assert_equal_i(5, (int)ta);
 cl_assert_equal_i(0, (int)td);

 git_patch_free(p);


 opts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, a, ((void*)0), a_content, strlen(a_content), ((void*)0), &opts));
 cl_assert(p != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_UNMODIFIED, git_patch_get_delta(p)->status);
 cl_assert_equal_i(0, (int)git_patch_num_hunks(p));
 git_patch_free(p);


 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, ((void*)0), ((void*)0), a_content, strlen(a_content), ((void*)0), &opts));
 cl_assert(p != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_ADDED, git_patch_get_delta(p)->status);
 cl_assert_equal_i(1, (int)git_patch_num_hunks(p));
 cl_assert_equal_i(1, git_patch_num_lines_in_hunk(p, 0));
 git_patch_free(p);


 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, a, ((void*)0), ((void*)0), 0, ((void*)0), &opts));
 cl_assert(p != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_DELETED, git_patch_get_delta(p)->status);
 cl_assert_equal_i(1, (int)git_patch_num_hunks(p));
 cl_assert_equal_i(1, git_patch_num_lines_in_hunk(p, 0));
 git_patch_free(p);


 opts.flags ^= GIT_DIFF_REVERSE;

 cl_git_pass(git_patch_from_blob_and_buffer(
  &p, a, ((void*)0), ((void*)0), 0, ((void*)0), &opts));
 cl_assert(p != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_ADDED, git_patch_get_delta(p)->status);
 cl_assert_equal_i(1, (int)git_patch_num_hunks(p));
 cl_assert_equal_i(1, git_patch_num_lines_in_hunk(p, 0));
 git_patch_free(p);

 git_blob_free(a);
}
