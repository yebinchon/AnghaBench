
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_reference ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
typedef int git_buf ;
struct TYPE_3__ {int checkout_strategy; } ;


 int GIT_BUF_INIT ;
 int GIT_CHECKOUT_FORCE ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_ECONFLICT ;
 int GIT_OBJECT_TREE ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_mkfile (int ,char const*) ;
 int cl_git_pass (int ) ;
 int * g_object ;
 TYPE_1__ g_opts ;
 int g_repo ;
 int git_branch_create (int **,int ,char*,int *,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char*,char const*) ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_index_add_bypath (int *,char const*) ;
 int git_index_free (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write (int *) ;
 int git_object_free (int *) ;
 int git_object_peel (int **,int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_name (int *) ;
 int git_reference_symbolic_create (int **,int ,char*,int ,int,int *) ;
 int git_repository_index (int **,int ) ;
 int git_revparse_single (int **,int ,char const*) ;

void assert_conflict(
 const char *entry_path,
 const char *new_content,
 const char *parent_sha,
 const char *commit_sha)
{
 git_index *index;
 git_object *hack_tree;
 git_reference *branch, *head;
 git_buf file_path = GIT_BUF_INIT;

 cl_git_pass(git_repository_index(&index, g_repo));


 cl_git_pass(git_revparse_single(&g_object, g_repo, parent_sha));
 cl_git_pass(git_branch_create(&branch, g_repo,
  "potential_conflict", (git_commit *)g_object, 0));


 cl_git_pass(git_reference_symbolic_create(
  &head, g_repo, "HEAD", git_reference_name(branch), 1, ((void*)0)));
 git_reference_free(head);
 git_reference_free(branch);


 g_opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_checkout_tree(g_repo, g_object, &g_opts));




 cl_git_pass(git_object_peel(&hack_tree, g_object, GIT_OBJECT_TREE));
 cl_git_pass(git_index_read_tree(index, (git_tree *)hack_tree));
 cl_git_pass(git_index_write(index));
 git_object_free(hack_tree);
 git_object_free(g_object);
 g_object = ((void*)0);


 cl_git_pass(git_buf_joinpath(&file_path, "./testrepo", entry_path));
 cl_git_mkfile(git_buf_cstr(&file_path), new_content);
 git_buf_dispose(&file_path);


 cl_git_pass(git_revparse_single(&g_object, g_repo, commit_sha));

 g_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
 cl_assert_equal_i(
  GIT_ECONFLICT, git_checkout_tree(g_repo, g_object, &g_opts));


 cl_git_pass(git_index_add_bypath(index, entry_path));
 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_assert_equal_i(
  GIT_ECONFLICT, git_checkout_tree(g_repo, g_object, &g_opts));
}
