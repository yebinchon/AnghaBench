
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
struct TYPE_14__ {char* path; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_15__ {TYPE_4__* tree; } ;
typedef TYPE_2__ git_index ;
struct TYPE_17__ {int id; } ;
struct TYPE_16__ {int oid; int children_count; int entry_count; } ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (TYPE_4__*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (TYPE_2__*,TYPE_1__*) ;
 int git_index_free (TYPE_2__*) ;
 TYPE_8__* git_index_get_byindex (TYPE_2__*,int ) ;
 int git_index_open (TYPE_2__**,char const*) ;
 int git_index_read_tree (TYPE_2__*,int *) ;
 int git_index_write (TYPE_2__*) ;
 TYPE_4__* git_oid_cmp (int *,int *) ;
 int git_oid_cpy (int *,int *) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int memset (TYPE_1__*,int,int) ;
 int p_unlink (char const*) ;

void test_index_cache__write_extension_invalidated_root(void)
{
 git_index *index;
 git_tree *tree;
 git_oid id;
 const char *tree_id_str = "45dd856fdd4d89b884c340ba0e047752d9b085d6";
 const char *index_file = "index-tree-invalidated";
 git_index_entry entry;

 cl_git_pass(git_index_open(&index, index_file));
 cl_assert(index->tree == ((void*)0));
 cl_git_pass(git_oid_fromstr(&id, tree_id_str));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &id));
 cl_git_pass(git_index_read_tree(index, tree));
 git_tree_free(tree);

 cl_assert(index->tree);

 memset(&entry, 0x0, sizeof(git_index_entry));
 git_oid_cpy(&entry.id, &git_index_get_byindex(index, 0)->id);
 entry.mode = GIT_FILEMODE_BLOB;
 entry.path = "some-new-file.txt";

 cl_git_pass(git_index_add(index, &entry));

 cl_assert_equal_i(-1, index->tree->entry_count);

 cl_git_pass(git_index_write(index));
 git_index_free(index);

 cl_git_pass(git_index_open(&index, index_file));
 cl_assert(index->tree);

 cl_assert_equal_i(-1, index->tree->entry_count);
 cl_assert_equal_i(0, index->tree->children_count);

 cl_assert(git_oid_cmp(&id, &index->tree->oid));

 cl_git_pass(p_unlink(index_file));
 git_index_free(index);
}
