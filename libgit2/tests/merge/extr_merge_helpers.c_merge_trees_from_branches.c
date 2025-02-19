
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_merge_options ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_REFS_HEADS_DIR ;
 int cl_git_pass (int) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int ,char const*) ;
 int git_commit_free (int *) ;
 int git_commit_id (int *) ;
 int git_commit_lookup (int **,int *,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_merge_base (int *,int *,int ,int ) ;
 int git_merge_trees (int **,int *,int *,int *,int *,int *) ;
 int git_reference_name_to_id (int *,int *,int ) ;
 int git_tree_free (int *) ;

int merge_trees_from_branches(
 git_index **index, git_repository *repo,
 const char *ours_name, const char *theirs_name,
 git_merge_options *opts)
{
 git_commit *our_commit, *their_commit, *ancestor_commit = ((void*)0);
 git_tree *our_tree, *their_tree, *ancestor_tree = ((void*)0);
 git_oid our_oid, their_oid, ancestor_oid;
 git_buf branch_buf = GIT_BUF_INIT;
 int error;

 git_buf_printf(&branch_buf, "%s%s", GIT_REFS_HEADS_DIR, ours_name);
 cl_git_pass(git_reference_name_to_id(&our_oid, repo, branch_buf.ptr));
 cl_git_pass(git_commit_lookup(&our_commit, repo, &our_oid));

 git_buf_clear(&branch_buf);
 git_buf_printf(&branch_buf, "%s%s", GIT_REFS_HEADS_DIR, theirs_name);
 cl_git_pass(git_reference_name_to_id(&their_oid, repo, branch_buf.ptr));
 cl_git_pass(git_commit_lookup(&their_commit, repo, &their_oid));

 error = git_merge_base(&ancestor_oid, repo, git_commit_id(our_commit), git_commit_id(their_commit));

 if (error != GIT_ENOTFOUND) {
  cl_git_pass(error);

  cl_git_pass(git_commit_lookup(&ancestor_commit, repo, &ancestor_oid));
  cl_git_pass(git_commit_tree(&ancestor_tree, ancestor_commit));
 }

 cl_git_pass(git_commit_tree(&our_tree, our_commit));
 cl_git_pass(git_commit_tree(&their_tree, their_commit));

 error = git_merge_trees(index, repo, ancestor_tree, our_tree, their_tree, opts);

 git_buf_dispose(&branch_buf);
 git_tree_free(our_tree);
 git_tree_free(their_tree);
 git_tree_free(ancestor_tree);
 git_commit_free(our_commit);
 git_commit_free(their_commit);
 git_commit_free(ancestor_commit);

 return error;
}
