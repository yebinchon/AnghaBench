
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_annotated_commit ;
struct TYPE_12__ {TYPE_2__* worktree; } ;
struct TYPE_11__ {int gitdir; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int CONFLICT_BRANCH ;
 TYPE_1__ GIT_BUF_INIT ;
 int MASTER_BRANCH ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 TYPE_8__ fixture ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,TYPE_2__*,int *) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ,int ) ;
 int git_merge__setup (TYPE_2__*,int *,int const**,int) ;
 int git_path_exists (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,TYPE_2__*,int ) ;
 int * merge_files ;

void test_worktree_merge__merge_setup(void)
{
 git_reference *ours_ref, *theirs_ref;
 git_annotated_commit *ours, *theirs;
 git_buf path = GIT_BUF_INIT;
 unsigned i;

 cl_git_pass(git_reference_lookup(&ours_ref, fixture.worktree, MASTER_BRANCH));
 cl_git_pass(git_annotated_commit_from_ref(&ours, fixture.worktree, ours_ref));

 cl_git_pass(git_reference_lookup(&theirs_ref, fixture.worktree, CONFLICT_BRANCH));
 cl_git_pass(git_annotated_commit_from_ref(&theirs, fixture.worktree, theirs_ref));

 cl_git_pass(git_merge__setup(fixture.worktree,
      ours, (const git_annotated_commit **)&theirs, 1));

 for (i = 0; i < ARRAY_SIZE(merge_files); i++) {
  git_buf_clear(&path);
  cl_git_pass(git_buf_printf(&path, "%s/%s",
       fixture.worktree->gitdir, merge_files[i]));
  cl_assert(git_path_exists(path.ptr));
 }

 git_buf_dispose(&path);
 git_reference_free(ours_ref);
 git_reference_free(theirs_ref);
 git_annotated_commit_free(ours);
 git_annotated_commit_free(theirs);
}
