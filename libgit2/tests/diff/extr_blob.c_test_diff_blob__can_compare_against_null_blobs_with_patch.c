
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_11__ {scalar_t__ origin; } ;
typedef TYPE_3__ git_diff_line ;
struct TYPE_10__ {int size; int id; } ;
struct TYPE_9__ {int size; int id; } ;
struct TYPE_12__ {int status; int flags; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_4__ git_diff_delta ;
typedef int git_blob ;
struct TYPE_13__ {int flags; } ;


 int GIT_DELTA_ADDED ;
 int GIT_DELTA_DELETED ;
 int GIT_DIFF_FLAG_BINARY ;
 int GIT_DIFF_LINE_ADDITION ;
 int GIT_DIFF_LINE_DELETION ;
 int GIT_DIFF_REVERSE ;
 int * alien ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_oid (int ,int *) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int * d ;
 int git_blob_id (int *) ;
 int git_blob_rawsize (int *) ;
 int git_oid_is_zero (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_blobs (int **,int *,int *,int *,int *,TYPE_5__*) ;
 TYPE_4__* git_patch_get_delta (int *) ;
 int git_patch_get_line_in_hunk (TYPE_3__ const**,int *,int ,int) ;
 scalar_t__ git_patch_num_hunks (int *) ;
 int git_patch_num_lines_in_hunk (int *,int ) ;
 TYPE_5__ opts ;

void test_diff_blob__can_compare_against_null_blobs_with_patch(void)
{
 git_blob *e = ((void*)0);
 git_patch *p;
 const git_diff_delta *delta;
 const git_diff_line *line;
 int l, max_l;

 cl_git_pass(git_patch_from_blobs(&p, d, ((void*)0), e, ((void*)0), &opts));

 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_DELETED, delta->status);
 cl_assert_equal_oid(git_blob_id(d), &delta->old_file.id);
 cl_assert_equal_sz(git_blob_rawsize(d), delta->old_file.size);
 cl_assert(git_oid_is_zero(&delta->new_file.id));
 cl_assert_equal_sz(0, delta->new_file.size);

 cl_assert_equal_i(1, (int)git_patch_num_hunks(p));
 cl_assert_equal_i(14, git_patch_num_lines_in_hunk(p, 0));

 max_l = git_patch_num_lines_in_hunk(p, 0);
 for (l = 0; l < max_l; ++l) {
  cl_git_pass(git_patch_get_line_in_hunk(&line, p, 0, l));
  cl_assert_equal_i(GIT_DIFF_LINE_DELETION, (int)line->origin);
 }

 git_patch_free(p);

 opts.flags |= GIT_DIFF_REVERSE;

 cl_git_pass(git_patch_from_blobs(&p, d, ((void*)0), e, ((void*)0), &opts));

 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_ADDED, delta->status);
 cl_assert(git_oid_is_zero(&delta->old_file.id));
 cl_assert_equal_sz(0, delta->old_file.size);
 cl_assert_equal_oid(git_blob_id(d), &delta->new_file.id);
 cl_assert_equal_sz(git_blob_rawsize(d), delta->new_file.size);

 cl_assert_equal_i(1, (int)git_patch_num_hunks(p));
 cl_assert_equal_i(14, git_patch_num_lines_in_hunk(p, 0));

 max_l = git_patch_num_lines_in_hunk(p, 0);
 for (l = 0; l < max_l; ++l) {
  cl_git_pass(git_patch_get_line_in_hunk(&line, p, 0, l));
  cl_assert_equal_i(GIT_DIFF_LINE_ADDITION, (int)line->origin);
 }

 git_patch_free(p);

 opts.flags ^= GIT_DIFF_REVERSE;

 cl_git_pass(git_patch_from_blobs(&p, alien, ((void*)0), ((void*)0), ((void*)0), &opts));

 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_DELETED, delta->status);
 cl_assert((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);

 cl_assert_equal_i(0, (int)git_patch_num_hunks(p));

 git_patch_free(p);

 cl_git_pass(git_patch_from_blobs(&p, ((void*)0), ((void*)0), alien, ((void*)0), &opts));

 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_ADDED, delta->status);
 cl_assert((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);

 cl_assert_equal_i(0, (int)git_patch_num_hunks(p));

 git_patch_free(p);
}
