
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_commit_tree (int **,int *) ;
 int git_odb_hashfile (int *,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_tree_free (int *) ;

__attribute__((used)) static void execute_test(void)
{
 git_oid oid, check;
 git_commit *commit;
 git_tree *tree;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/branch1"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &oid));
 cl_git_pass(git_commit_tree(&tree, commit));

 opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 cl_git_pass(git_checkout_tree(g_repo, (git_object *)tree, &opts));

 git_tree_free(tree);
 git_commit_free(commit);


 cl_git_pass(git_oid_fromstr(&check, "8ab005d890fe53f65eda14b23672f60d9f4ec5a1"));
 cl_git_pass(git_odb_hashfile(&oid, "binaryunicode/lenna.jpg", GIT_OBJECT_BLOB));
 cl_assert_equal_oid(&oid, &check);


 cl_git_pass(git_oid_fromstr(&check, "965b223880dd4249e2c66a0cc0b4cffe1dc40f5a"));
 cl_git_pass(git_odb_hashfile(&oid, "binaryunicode/utf16_withbom_noeol_crlf.txt", GIT_OBJECT_BLOB));
 cl_assert_equal_oid(&oid, &check);
}
