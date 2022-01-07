
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;


 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_mkfile (char*,int *) ;
 int cl_git_pass (int ) ;
 int git_index_add_bypath (int *,char*) ;
 scalar_t__ git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int *,int *) ;
 int p_mkdir (char*,int) ;

void test_index_read_tree__read_write_involution(void)
{
 git_repository *repo;
 git_index *index;
 git_oid tree_oid;
 git_tree *tree;
 git_oid expected;

 p_mkdir("read_tree", 0700);

 cl_git_pass(git_repository_init(&repo, "./read_tree", 0));
 cl_git_pass(git_repository_index(&index, repo));

 cl_assert(git_index_entrycount(index) == 0);

 p_mkdir("./read_tree/abc", 0700);


 cl_git_mkfile("./read_tree/abc-d", ((void*)0));
 cl_git_mkfile("./read_tree/abc/d", ((void*)0));
 cl_git_mkfile("./read_tree/abc_d", ((void*)0));

 cl_git_pass(git_index_add_bypath(index, "abc-d"));
 cl_git_pass(git_index_add_bypath(index, "abc_d"));
 cl_git_pass(git_index_add_bypath(index, "abc/d"));


 cl_git_pass(git_index_write_tree(&expected, index));


 git_tree_lookup(&tree, repo, &expected);
 cl_git_pass(git_index_read_tree(index, tree));
 git_tree_free(tree);

 cl_git_pass(git_index_write_tree(&tree_oid, index));
 cl_assert_equal_oid(&expected, &tree_oid);

 git_index_free(index);
 git_repository_free(repo);

 cl_fixture_cleanup("read_tree");
}
