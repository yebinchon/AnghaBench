
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int entry_count; int children_count; } ;
typedef TYPE_1__ git_tree_cache ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_16__ {char* path; int id; int mode; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_17__ {TYPE_1__ const* tree; } ;
typedef TYPE_3__ git_index ;


 int GIT_FILEMODE_BLOB ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (TYPE_3__*,TYPE_2__*) ;
 int git_index_clear (TYPE_3__*) ;
 int git_index_free (TYPE_3__*) ;
 int git_index_read_tree (TYPE_3__*,int *) ;
 int git_index_write_tree (int *,TYPE_3__*) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (TYPE_3__**,int ) ;
 TYPE_1__* git_tree_cache_get (TYPE_1__ const*,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int memset (TYPE_2__*,int,int) ;

void test_index_cache__read_tree_children(void)
{
 git_index *index;
 git_index_entry entry;
 git_tree *tree;
 const git_tree_cache *cache;
 git_oid tree_id;

 cl_git_pass(git_repository_index(&index, g_repo));
 cl_git_pass(git_index_clear(index));
 cl_assert(index->tree == ((void*)0));



 memset(&entry, 0x0, sizeof(git_index_entry));
 entry.path = "top-level";
 entry.mode = GIT_FILEMODE_BLOB;
 git_oid_fromstr(&entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
 cl_git_pass(git_index_add(index, &entry));


 entry.path = "subdir/some-file";
 cl_git_pass(git_index_add(index, &entry));

 entry.path = "subdir/even-deeper/some-file";
 cl_git_pass(git_index_add(index, &entry));

 entry.path = "subdir2/some-file";
 cl_git_pass(git_index_add(index, &entry));

 cl_git_pass(git_index_write_tree(&tree_id, index));
 cl_git_pass(git_index_clear(index));
 cl_assert(index->tree == ((void*)0));

 cl_git_pass(git_tree_lookup(&tree, g_repo, &tree_id));
 cl_git_pass(git_index_read_tree(index, tree));
 git_tree_free(tree);

 cl_assert(index->tree);
 cl_assert_equal_i(2, index->tree->children_count);


 entry.path = "subdir/some-file";
 git_oid_fromstr(&entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
 cl_git_pass(git_index_add(index, &entry));

 cl_assert_equal_i(-1, index->tree->entry_count);

 cache = git_tree_cache_get(index->tree, "subdir");
 cl_assert(cache);
 cl_assert_equal_i(-1, cache->entry_count);

 cache = git_tree_cache_get(index->tree, "subdir/even-deeper");
 cl_assert(cache);
 cl_assert_equal_i(1, cache->entry_count);

 cache = git_tree_cache_get(index->tree, "subdir2");
 cl_assert(cache);
 cl_assert_equal_i(1, cache->entry_count);

 git_index_free(index);
}
