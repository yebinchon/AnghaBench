
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_annotated_commit ;
struct TYPE_2__ {int worktree; } ;


 int CONFLICT_BRANCH ;
 int GIT_MERGE_HEAD_FILE ;
 int cl_git_pass (int ) ;
 TYPE_1__ fixture ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_merge (int ,int const**,int,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;

void test_worktree_merge__merge_head(void)
{
 git_reference *theirs_ref, *ref;
 git_annotated_commit *theirs;

 cl_git_pass(git_reference_lookup(&theirs_ref, fixture.worktree, CONFLICT_BRANCH));
 cl_git_pass(git_annotated_commit_from_ref(&theirs, fixture.worktree, theirs_ref));
 cl_git_pass(git_merge(fixture.worktree, (const git_annotated_commit **)&theirs, 1, ((void*)0), ((void*)0)));

 cl_git_pass(git_reference_lookup(&ref, fixture.worktree, GIT_MERGE_HEAD_FILE));

 git_reference_free(ref);
 git_reference_free(theirs_ref);
 git_annotated_commit_free(theirs);
}
