
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
struct TYPE_5__ {TYPE_2__ member_0; } ;
struct TYPE_7__ {char const* member_3; int member_2; TYPE_1__ member_1; int member_0; } ;
typedef TYPE_3__ git_tree_update ;
typedef int git_tree ;
typedef int git_oid ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int GIT_TREE_UPDATE_REMOVE ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_remove (int *,char const*,int ) ;
 int git_index_write_tree_to (int *,int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_create_updated (int *,int ,int *,int,TYPE_3__*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_object_tree_update__remove_all_entries(void)
{
 git_oid tree_index_id, tree_updater_id, base_id;
 git_tree *base_tree;
 git_index *idx;
 const char *path1 = "subdir/subdir2/README";
 const char *path2 = "subdir/subdir2/new.txt";

 git_tree_update updates[] = {
  { GIT_TREE_UPDATE_REMOVE, {{0}}, GIT_FILEMODE_BLOB , path1},
  { GIT_TREE_UPDATE_REMOVE, {{0}}, GIT_FILEMODE_BLOB , path2},
 };

 cl_git_pass(git_oid_fromstr(&base_id, "c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b"));
 cl_git_pass(git_tree_lookup(&base_tree, g_repo, &base_id));


 cl_git_pass(git_index_new(&idx));
 cl_git_pass(git_index_read_tree(idx, base_tree));
 cl_git_pass(git_index_remove(idx, path1, 0));
 cl_git_pass(git_index_remove(idx, path2, 0));
 cl_git_pass(git_index_write_tree_to(&tree_index_id, idx, g_repo));
 git_index_free(idx);


 cl_git_pass(git_tree_create_updated(&tree_updater_id, g_repo, base_tree, 2, updates));

 cl_assert_equal_oid(&tree_index_id, &tree_updater_id);

 git_tree_free(base_tree);
}
