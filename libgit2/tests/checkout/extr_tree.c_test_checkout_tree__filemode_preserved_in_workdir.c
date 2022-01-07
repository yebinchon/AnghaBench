
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_PERMS_IS_EXEC (int ) ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int g_repo ;
 int git_checkout_tree (int ,int const*,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int read_filemode (char*) ;

void test_checkout_tree__filemode_preserved_in_workdir(void)
{

 git_oid executable_oid;
 git_commit *commit;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 opts.checkout_strategy = GIT_CHECKOUT_FORCE;


 cl_git_pass(git_oid_fromstr(&executable_oid, "afe4393b2b2a965f06acf2ca9658eaa01e0cd6b6"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &executable_oid));

 cl_git_pass(git_checkout_tree(g_repo, (const git_object *)commit, &opts));
 cl_assert(GIT_PERMS_IS_EXEC(read_filemode("executable.txt")));

 git_commit_free(commit);



 cl_git_pass(git_oid_fromstr(&executable_oid, "cf80f8de9f1185bf3a05f993f6121880dd0cfbc9"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &executable_oid));

 cl_git_pass(git_checkout_tree(g_repo, (const git_object *)commit, &opts));
 cl_assert(!GIT_PERMS_IS_EXEC(read_filemode("a/b.txt")));

 git_commit_free(commit);



 cl_git_pass(git_oid_fromstr(&executable_oid, "144344043ba4d4a405da03de3844aa829ae8be0e"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &executable_oid));

 cl_git_pass(git_checkout_tree(g_repo, (const git_object *)commit, &opts));
 cl_assert(GIT_PERMS_IS_EXEC(read_filemode("a/b.txt")));

 git_commit_free(commit);



 cl_git_pass(git_oid_fromstr(&executable_oid, "cf80f8de9f1185bf3a05f993f6121880dd0cfbc9"));
 cl_git_pass(git_commit_lookup(&commit, g_repo, &executable_oid));

 cl_git_pass(git_checkout_tree(g_repo, (const git_object *)commit, &opts));
 cl_assert(!GIT_PERMS_IS_EXEC(read_filemode("a/b.txt")));

 git_commit_free(commit);



}
