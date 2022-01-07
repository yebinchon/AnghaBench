
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_COMMIT ;
 int GIT_RESET_HARD ;
 int O_CREAT ;
 int O_RDWR ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_write2file (char*,char*,int,int,int) ;
 int cl_must_pass (int ) ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup_resolved (int **,int ,char*,int) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int * git_reference_target (int *) ;
 int git_reset (int ,int *,int ,int *) ;
 int p_mkdir (char*,int) ;
 int repo ;

void test_checkout_icase__conflicts_with_casechanged_subtrees(void)
{
 git_reference *orig_ref;
 git_object *orig, *subtrees;
 git_oid oid;
 git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

 checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;

 cl_git_pass(git_reference_lookup_resolved(&orig_ref, repo, "HEAD", 100));
 cl_git_pass(git_object_lookup(&orig, repo, git_reference_target(orig_ref), GIT_OBJECT_COMMIT));
 cl_git_pass(git_reset(repo, (git_object *)orig, GIT_RESET_HARD, ((void*)0)));

 cl_must_pass(p_mkdir("testrepo/AB", 0777));
 cl_must_pass(p_mkdir("testrepo/AB/C", 0777));
 cl_git_write2file("testrepo/AB/C/3.txt", "Foobar!\n", 8, O_RDWR|O_CREAT, 0666);

 cl_git_pass(git_reference_name_to_id(&oid, repo, "refs/heads/subtrees"));
 cl_git_pass(git_object_lookup(&subtrees, repo, &oid, GIT_OBJECT_ANY));

 cl_git_fail(git_checkout_tree(repo, subtrees, &checkout_opts));

 git_object_free(orig);
 git_object_free(subtrees);
    git_reference_free(orig_ref);
}
