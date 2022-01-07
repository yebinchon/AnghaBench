
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ git_diff_options ;
struct TYPE_7__ {int status; } ;
typedef TYPE_2__ git_diff_delta ;
typedef int git_diff ;
typedef int git_commit ;


 int GIT_DIFF_INCLUDE_TYPECHANGE ;
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ;
 int cl_assert_equal_i (char,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_diff__commit (int **,int ,int *,TYPE_1__*) ;
 int git_diff_find_similar (int *,int *) ;
 int git_diff_free (int *) ;
 TYPE_2__* git_diff_get_delta (int *,size_t) ;
 size_t git_diff_num_deltas (int *) ;
 int git_diff_status_char (int ) ;
 int git_oid_fromstr (int *,char*) ;

void test_checkout_typechange__status_char(void)
{
 size_t i;
 git_oid oid;
 git_commit *commit;
 git_diff *diff;
 const git_diff_delta *delta;
 git_diff_options diffopts = GIT_DIFF_OPTIONS_INIT;
 char expected[8] = {'M', 'M', 'R', 'T', 'D', 'R', 'A', 'R'};

 git_oid_fromstr(&oid, "9b19edf33a03a0c59cdfc113bfa5c06179bf9b1a");
 cl_git_pass(git_commit_lookup(&commit, g_repo, &oid));
 diffopts.flags |= GIT_DIFF_INCLUDE_TYPECHANGE;
 cl_git_pass(git_diff__commit(&diff, g_repo, commit, &diffopts));
 cl_git_pass(git_diff_find_similar(diff, ((void*)0)));

 for (i = 0; i < git_diff_num_deltas(diff); i++) {
  delta = git_diff_get_delta(diff, i);
  cl_assert_equal_i(expected[i], git_diff_status_char(delta->status));
 }

 git_diff_free(diff);
 git_commit_free(commit);
}
