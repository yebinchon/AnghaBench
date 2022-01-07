
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int member_0; } ;
struct TYPE_9__ {TYPE_3__ member_0; } ;
struct TYPE_11__ {char const* member_3; int id; int member_2; TYPE_2__ member_1; int member_0; } ;
typedef TYPE_4__ git_tree_update ;
typedef int git_tree ;
typedef int git_oid ;
struct TYPE_8__ {int member_0; } ;
struct TYPE_12__ {char const* path; int mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_5__ git_index_entry ;
typedef int git_index ;


 int GIT_FILEMODE_BLOB ;
 int GIT_TREE_UPDATE_UPSERT ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (int *,TYPE_5__*) ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write_tree_to (int *,int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_create_updated (int *,int ,int *,int,TYPE_4__*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_object_tree_update__replace_blob(void)
{
 git_oid tree_index_id, tree_updater_id, base_id;
 git_tree *base_tree;
 git_index *idx;
 const char *path = "README";
 git_index_entry entry = { {0} };

 git_tree_update updates[] = {
  { GIT_TREE_UPDATE_UPSERT, {{0}}, GIT_FILEMODE_BLOB, path},
 };

 cl_git_pass(git_oid_fromstr(&base_id, "c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b"));
 cl_git_pass(git_tree_lookup(&base_tree, g_repo, &base_id));


 cl_git_pass(git_index_new(&idx));
 cl_git_pass(git_index_read_tree(idx, base_tree));

 entry.path = path;
 cl_git_pass(git_oid_fromstr(&entry.id, "fa49b077972391ad58037050f2a75f74e3671e92"));
 entry.mode = GIT_FILEMODE_BLOB;
 cl_git_pass(git_index_add(idx, &entry));

 cl_git_pass(git_index_write_tree_to(&tree_index_id, idx, g_repo));
 git_index_free(idx);


 cl_git_pass(git_oid_fromstr(&updates[0].id, "fa49b077972391ad58037050f2a75f74e3671e92"));
 cl_git_pass(git_tree_create_updated(&tree_updater_id, g_repo, base_tree, 1, updates));

 cl_assert_equal_oid(&tree_index_id, &tree_updater_id);

 git_tree_free(base_tree);
}
