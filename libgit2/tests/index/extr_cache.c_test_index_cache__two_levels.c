
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int entry_count; int children_count; } ;
typedef TYPE_1__ git_tree_cache ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_18__ {char* path; int id; int mode; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_19__ {TYPE_1__ const* tree; } ;
typedef TYPE_3__ git_index ;
typedef int entry ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (TYPE_3__*,TYPE_2__*) ;
 int git_index_clear (TYPE_3__*) ;
 int git_index_free (TYPE_3__*) ;
 int git_index_read (TYPE_3__*,int) ;
 int git_index_read_tree (TYPE_3__*,int *) ;
 int git_index_write (TYPE_3__*) ;
 int git_index_write_tree (int *,TYPE_3__*) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (TYPE_3__**,int ) ;
 TYPE_1__ const* git_tree_cache_get (TYPE_1__ const*,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int memset (TYPE_2__*,int,int) ;

void test_index_cache__two_levels(void)
{
 git_tree *tree;
 git_oid tree_id;
 git_index *index;
 git_index_entry entry;
 const git_tree_cache *tree_cache;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_clear(index));

 memset(&entry, 0x0, sizeof(entry));
 entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_oid_fromstr(&entry.id, "a8233120f6ad708f843d861ce2b7228ec4e3dec6"));
 entry.path = "top-level.txt";
 cl_git_pass(git_index_add(index, &entry));

 entry.path = "subdir/file.txt";
 cl_git_pass(git_index_add(index, &entry));


 cl_git_pass(git_index_write_tree(&tree_id, index));
 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));
 cl_git_pass(git_index_read_tree(index, tree));
 git_tree_free(tree);
 cl_git_pass(git_index_write(index));


 cl_assert(index->tree);
 cl_assert(git_tree_cache_get(index->tree, "subdir"));

 cl_git_pass(git_index_read(index, 1));

 cl_assert(index->tree);
 cl_assert(git_tree_cache_get(index->tree, "subdir"));

 entry.path = "top-level.txt";
 cl_git_pass(git_oid_fromstr(&entry.id, "3697d64be941a53d4ae8f6a271e4e3fa56b022cc"));
 cl_git_pass(git_index_add(index, &entry));


 cl_git_pass(git_index_write(index));
 cl_git_pass(git_index_read(index, 1));


 cl_assert(index->tree);
 cl_assert_equal_i(-1, index->tree->entry_count);
 cl_assert_equal_i(1, index->tree->children_count);
 tree_cache = git_tree_cache_get(index->tree, "subdir");
 cl_assert(tree_cache);
 cl_assert_equal_i(1, tree_cache->entry_count);

 git_index_free(index);
}
