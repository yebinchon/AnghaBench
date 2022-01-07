
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int check_file_contents (char*,char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_revparse_single (int **,int ,char const*) ;
 int test_checkout_tree__cleanup () ;

void test_checkout_tree__issue_1397(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 const char *partial_oid = "8a7ef04";
 git_object *tree = ((void*)0);

 test_checkout_tree__cleanup();

 g_repo = cl_git_sandbox_init("issue_1397");

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 cl_git_pass(git_revparse_single(&tree, g_repo, partial_oid));

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_checkout_tree(g_repo, tree, &opts));

 check_file_contents("./issue_1397/crlf_file.txt", "first line\r\nsecond line\r\nboth with crlf");

 git_object_free(tree);
}
