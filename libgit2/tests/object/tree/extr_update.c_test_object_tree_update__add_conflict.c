
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
struct TYPE_5__ {TYPE_2__ member_0; } ;
struct TYPE_7__ {char* member_3; int id; int member_2; TYPE_1__ member_1; int member_0; } ;
typedef TYPE_3__ git_tree_update ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int GIT_TREE_UPDATE_UPSERT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_create_updated (int *,int ,int *,int,TYPE_3__*) ;

void test_object_tree_update__add_conflict(void)
{
 int i;
 git_oid tree_updater_id;
 git_tree_update updates[] = {
  { GIT_TREE_UPDATE_UPSERT, {{0}}, GIT_FILEMODE_BLOB, "a/dir/blob"},
  { GIT_TREE_UPDATE_UPSERT, {{0}}, GIT_FILEMODE_BLOB, "a/dir"},
 };

 for (i = 0; i < 2; i++) {
  cl_git_pass(git_oid_fromstr(&updates[i].id, "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd"));
 }

 cl_git_fail(git_tree_create_updated(&tree_updater_id, g_repo, ((void*)0), 2, updates));
}
