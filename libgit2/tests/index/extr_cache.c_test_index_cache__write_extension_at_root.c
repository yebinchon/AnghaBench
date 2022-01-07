
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
struct TYPE_9__ {TYPE_2__* tree; } ;
typedef TYPE_1__ git_index ;
struct TYPE_10__ {int oid; int children_count; int entry_count; } ;


 int cl_assert (TYPE_2__*) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_entrycount (TYPE_1__*) ;
 int git_index_free (TYPE_1__*) ;
 int git_index_open (TYPE_1__**,char const*) ;
 int git_index_read_tree (TYPE_1__*,int *) ;
 int git_index_write (TYPE_1__*) ;
 TYPE_2__* git_oid_equal (int *,int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int p_unlink (char const*) ;

void test_index_cache__write_extension_at_root(void)
{
 git_index *index;
 git_tree *tree;
 git_oid id;
 const char *tree_id_str = "45dd856fdd4d89b884c340ba0e047752d9b085d6";
 const char *index_file = "index-tree";

 cl_git_pass(git_index_open(&index, index_file));
 cl_assert(index->tree == ((void*)0));
 cl_git_pass(git_oid_fromstr(&id, tree_id_str));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));
 cl_git_pass(git_index_read_tree(index, tree));
 git_tree_free(tree);

 cl_assert(index->tree);
 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_git_pass(git_index_open(&index, index_file));
 cl_assert(index->tree);

 cl_assert_equal_i(git_index_entrycount(index), index->tree->entry_count);
 cl_assert_equal_i(0, index->tree->children_count);

 cl_assert(git_oid_equal(&id, &index->tree->oid));

 cl_git_pass(p_unlink(index_file));
 git_index_free(index);
}
