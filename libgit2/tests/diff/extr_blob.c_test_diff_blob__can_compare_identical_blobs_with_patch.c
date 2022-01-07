
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_6__ {int id; int size; } ;
struct TYPE_5__ {int id; int size; } ;
struct TYPE_7__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;


 int GIT_DELTA_UNMODIFIED ;
 int * alien ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_oid (int ,int *) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_git_pass (int ) ;
 int * d ;
 int git_blob_id (int *) ;
 int git_blob_rawsize (int *) ;
 int git_oid_is_zero (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_blobs (int **,int *,int *,int *,int *,int *) ;
 TYPE_3__* git_patch_get_delta (int *) ;
 scalar_t__ git_patch_num_hunks (int *) ;
 int opts ;

void test_diff_blob__can_compare_identical_blobs_with_patch(void)
{
 git_patch *p;
 const git_diff_delta *delta;

 cl_git_pass(git_patch_from_blobs(&p, d, ((void*)0), d, ((void*)0), &opts));
 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_UNMODIFIED, delta->status);
 cl_assert_equal_sz(delta->old_file.size, git_blob_rawsize(d));
 cl_assert_equal_oid(git_blob_id(d), &delta->old_file.id);
 cl_assert_equal_sz(delta->new_file.size, git_blob_rawsize(d));
 cl_assert_equal_oid(git_blob_id(d), &delta->new_file.id);

 cl_assert_equal_i(0, (int)git_patch_num_hunks(p));
 git_patch_free(p);

 cl_git_pass(git_patch_from_blobs(&p, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &opts));
 cl_assert(p != ((void*)0));

 delta = git_patch_get_delta(p);
 cl_assert(delta != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_UNMODIFIED, delta->status);
 cl_assert_equal_sz(0, delta->old_file.size);
 cl_assert(git_oid_is_zero(&delta->old_file.id));
 cl_assert_equal_sz(0, delta->new_file.size);
 cl_assert(git_oid_is_zero(&delta->new_file.id));

 cl_assert_equal_i(0, (int)git_patch_num_hunks(p));
 git_patch_free(p);

 cl_git_pass(git_patch_from_blobs(&p, alien, ((void*)0), alien, ((void*)0), &opts));
 cl_assert(p != ((void*)0));
 cl_assert_equal_i(GIT_DELTA_UNMODIFIED, git_patch_get_delta(p)->status);
 cl_assert_equal_i(0, (int)git_patch_num_hunks(p));
 git_patch_free(p);
}
