
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_5__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_CHECKOUT_UPDATE_ONLY ;
 int GIT_OBJECT_ANY ;
 int assert_on_branch (int ,char*) ;
 int check_file_contents_nocr (char*,char*) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_1__*) ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_path_isdir (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_set_head (int ,char*) ;

void test_checkout_tree__can_update_only(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 git_oid oid;
 git_object *obj = ((void*)0);



 assert_on_branch(g_repo, "master");

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;
 cl_git_pass(git_checkout_head(g_repo, &opts));

 cl_assert(!git_path_isdir("testrepo/a"));

 check_file_contents_nocr("testrepo/branch_file.txt", "hi\nbye!\n");



 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_UPDATE_ONLY;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/dir"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/dir"));

 assert_on_branch(g_repo, "dir");





 cl_assert(!git_path_isdir("testrepo/a"));


 check_file_contents_nocr("testrepo/branch_file.txt", "hi\n");

 git_object_free(obj);
}
