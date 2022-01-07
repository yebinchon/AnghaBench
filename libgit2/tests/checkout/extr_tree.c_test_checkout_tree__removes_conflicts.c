
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_index ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_p (int *,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int create_conflict (char*) ;
 int g_repo ;
 int git_checkout_tree (int ,int const*,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_index_free (int *) ;
 int git_index_get_bypath (int *,char*,int) ;
 int git_index_remove (int *,char*,int ) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_path_exists (char*) ;
 int git_repository_index (int **,int ) ;

void test_checkout_tree__removes_conflicts(void)
{
 git_oid commit_id;
 git_commit *commit;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_index *index;

 cl_git_pass(git_oid_fromstr(&commit_id, "afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &commit_id));

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_checkout_tree(g_repo, (const git_object *)commit, &opts));

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_remove(index, "executable.txt", 0));

 create_conflict("executable.txt");
 cl_git_mkfile("testrepo/executable.txt", "This is the conflict file.\n");

 create_conflict("other.txt");
 cl_git_mkfile("testrepo/other.txt", "This is another conflict file.\n");

 cl_git_pass(git_index_write(index));

 cl_git_pass(git_checkout_tree(g_repo, (const git_object *)commit, &opts));

 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "executable.txt", 1));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "executable.txt", 2));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "executable.txt", 3));

 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "other.txt", 1));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "other.txt", 2));
 cl_assert_equal_p(((void*)0), git_index_get_bypath(index, "other.txt", 3));

 cl_assert(!git_path_exists("testrepo/other.txt"));

 git_commit_free(commit);
 git_index_free(index);
}
