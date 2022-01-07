
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int cl_assert (int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_repository_open (int **,int ) ;
 int git_tree_lookup (int **,int *,int *) ;
 int * repo ;
 int * tree ;

void test_object_tree_frompath__initialize(void)
{
 git_oid id;
 const char *tree_with_subtrees_oid = "ae90f12eea699729ed24555e40b9fd669da12a12";

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));
 cl_assert(repo != ((void*)0));

 cl_git_pass(git_oid_fromstr(&id, tree_with_subtrees_oid));
 cl_git_pass(git_tree_lookup(&tree, repo, &id));
 cl_assert(tree != ((void*)0));
}
