
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ git_merge_options ;
typedef int git_index ;


 int GIT_EMERGECONFLICT ;
 int GIT_MERGE_FAIL_ON_CONFLICT ;
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ;
 int cl_git_fail_with (int ,int ) ;
 int merge_commits_from_branches (int **,int ,char*,char*,TYPE_1__*) ;
 int merge_trees_from_branches (int **,int ,char*,char*,TYPE_1__*) ;
 int repo ;

void test_merge_trees_commits__fail_on_conflict(void)
{
 git_index *index;
 git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

 opts.flags |= GIT_MERGE_FAIL_ON_CONFLICT;

 cl_git_fail_with(GIT_EMERGECONFLICT,
  merge_trees_from_branches(&index, repo, "df_side1", "df_side2", &opts));

 cl_git_fail_with(GIT_EMERGECONFLICT,
  merge_commits_from_branches(&index, repo, "master", "unrelated", &opts));
 cl_git_fail_with(GIT_EMERGECONFLICT,
  merge_commits_from_branches(&index, repo, "master", "branch", &opts));
}
