
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
struct TYPE_4__ {int flags_extended; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_INDEX_ENTRY_UPTODATE ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write_tree_to (int *,int *,int ) ;
 int git_repository_index (int **,int ) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int setup_uptodate_files () ;

void test_index_racy__read_tree_clears_uptodate_bit(void)
{
 git_index *index;
 git_tree *tree;
 const git_index_entry *entry;
 git_oid id;

 setup_uptodate_files();

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_write_tree_to(&id, index, g_repo));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));
 cl_git_pass(git_index_read_tree(index, tree));


 cl_assert((entry = git_index_get_bypath(index, "A", 0)));
 cl_assert_equal_i(0, (entry->flags_extended & GIT_INDEX_ENTRY_UPTODATE));

 cl_assert((entry = git_index_get_bypath(index, "B", 0)));
 cl_assert_equal_i(0, (entry->flags_extended & GIT_INDEX_ENTRY_UPTODATE));

 cl_assert((entry = git_index_get_bypath(index, "C", 0)));
 cl_assert_equal_i(0, (entry->flags_extended & GIT_INDEX_ENTRY_UPTODATE));

 git_tree_free(tree);
 git_index_free(index);
}
