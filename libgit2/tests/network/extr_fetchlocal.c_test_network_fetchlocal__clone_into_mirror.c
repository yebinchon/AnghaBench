
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
struct TYPE_4__ {int bare; int remote_cb; } ;
typedef TYPE_1__ git_clone_options ;


 TYPE_1__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_REFERENCE_SYMBOLIC ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int git_clone (int **,int ,char*,TYPE_1__*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_reference_symbolic_target (int *) ;
 int git_reference_type (int *) ;
 int git_repository_free (int *) ;
 int remote_mirror_cb ;

void test_network_fetchlocal__clone_into_mirror(void)
{
 git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
 git_repository *repo;
 git_reference *ref;

 opts.bare = 1;
 opts.remote_cb = remote_mirror_cb;
 cl_git_pass(git_clone(&repo, cl_git_fixture_url("testrepo.git"), "./foo.git", &opts));

 cl_git_pass(git_reference_lookup(&ref, repo, "HEAD"));
 cl_assert_equal_i(GIT_REFERENCE_SYMBOLIC, git_reference_type(ref));
 cl_assert_equal_s("refs/heads/master", git_reference_symbolic_target(ref));

 git_reference_free(ref);
 cl_git_pass(git_reference_lookup(&ref, repo, "refs/remotes/test/master"));

 git_reference_free(ref);
 git_repository_free(repo);
 cl_fixture_cleanup("./foo.git");
}
