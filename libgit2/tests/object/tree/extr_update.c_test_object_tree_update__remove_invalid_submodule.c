
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
struct TYPE_5__ {TYPE_2__ member_0; } ;
struct TYPE_7__ {char* member_3; int member_2; TYPE_1__ member_1; int member_0; } ;
typedef TYPE_3__ git_tree_update ;
typedef int git_tree ;
typedef int git_oid ;


 int GIT_FILEMODE_BLOB ;
 int GIT_TREE_UPDATE_REMOVE ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_create_updated (int *,int ,int *,int,TYPE_3__*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;

void test_object_tree_update__remove_invalid_submodule(void)
{
 git_tree *baseline;
 git_oid updated_tree_id, baseline_id;
 git_tree_update updates[] = {
  {GIT_TREE_UPDATE_REMOVE, {{0}}, GIT_FILEMODE_BLOB, "submodule"},
 };


 cl_git_pass(git_oid_fromstr(&baseline_id, "396c7f1adb7925f51ba13a75f48252f44c5a14a2"));
 cl_git_pass(git_tree_lookup(&baseline, g_repo, &baseline_id));
 cl_git_pass(git_tree_create_updated(&updated_tree_id, g_repo, baseline, 1, updates));

 git_tree_free(baseline);
}
