
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_index_entry ;
typedef int git_index ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_annotated_commit ;
struct TYPE_13__ {TYPE_2__* worktree; } ;
struct TYPE_12__ {int workdir; } ;


 int CONFLICT_BRANCH ;
 int CONFLICT_BRANCH_FILE_TXT ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int const*) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_assert_equal_sz (size_t,int) ;
 int cl_git_pass (int ) ;
 TYPE_9__ fixture ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,TYPE_2__*,int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 scalar_t__ git_index_entry_is_conflict (int const*) ;
 size_t git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int * git_index_get_byindex (int *,size_t) ;
 int git_merge (TYPE_2__*,int const**,int,int *,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,TYPE_2__*,int ) ;
 int git_repository_index (int **,TYPE_2__*) ;

void test_worktree_merge__merge_conflict(void)
{
 git_buf path = GIT_BUF_INIT, buf = GIT_BUF_INIT;
 git_reference *theirs_ref;
 git_annotated_commit *theirs;
 git_index *index;
 const git_index_entry *entry;
 size_t i, conflicts = 0;

 cl_git_pass(git_reference_lookup(&theirs_ref, fixture.worktree, CONFLICT_BRANCH));
 cl_git_pass(git_annotated_commit_from_ref(&theirs, fixture.worktree, theirs_ref));

 cl_git_pass(git_merge(fixture.worktree,
      (const git_annotated_commit **)&theirs, 1, ((void*)0), ((void*)0)));

 cl_git_pass(git_repository_index(&index, fixture.worktree));
 for (i = 0; i < git_index_entrycount(index); i++) {
  cl_assert(entry = git_index_get_byindex(index, i));

  if (git_index_entry_is_conflict(entry))
   conflicts++;
 }
 cl_assert_equal_sz(conflicts, 3);

 git_reference_free(theirs_ref);
 git_annotated_commit_free(theirs);
 git_index_free(index);

 cl_git_pass(git_buf_joinpath(&path, fixture.worktree->workdir, "branch_file.txt"));
 cl_git_pass(git_futils_readbuffer(&buf, path.ptr));
 cl_assert_equal_s(buf.ptr, CONFLICT_BRANCH_FILE_TXT);

 git_buf_dispose(&path);
 git_buf_dispose(&buf);
}
