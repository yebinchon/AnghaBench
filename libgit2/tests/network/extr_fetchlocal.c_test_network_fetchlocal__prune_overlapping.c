
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ count; int member_0; } ;
typedef TYPE_2__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;
typedef int git_oid ;
struct TYPE_8__ {int* payload; void* update_tips; int transfer_progress; } ;
struct TYPE_10__ {TYPE_1__ callbacks; } ;
typedef TYPE_3__ git_fetch_options ;
typedef int git_config ;


 TYPE_3__ GIT_FETCH_OPTIONS_INIT ;
 int GIT_REMOTE_ORIGIN ;
 int assert_ref_exists (int *,char*) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 char* cl_git_path_url (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_local_repo ;
 int git_config_delete_multivar (int *,char*,char*) ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_config_set_multivar (int *,char*,char*,char*) ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_create (int **,int *,char*,int *,int,int *) ;
 int git_reference_free (int *) ;
 int git_reference_list (TYPE_2__*,int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_reference_target (int *) ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_fetch (int *,int *,TYPE_3__*,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,int ) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_path (int *) ;
 int git_strarray_free (TYPE_2__*) ;
 int transfer_cb ;
 void* update_tips_fail_on_call ;

void test_network_fetchlocal__prune_overlapping(void)
{
 git_repository *repo;
 git_remote *origin;
 int callcount = 0;
 git_strarray refnames = {0};
 git_reference *ref;
 git_config *config;
 git_oid target;

 git_repository *remote_repo = cl_git_sandbox_init("testrepo.git");
 const char *url = cl_git_path_url(git_repository_path(remote_repo));

 git_fetch_options options = GIT_FETCH_OPTIONS_INIT;
 options.callbacks.transfer_progress = transfer_cb;
 options.callbacks.payload = &callcount;

 cl_git_pass(git_reference_lookup(&ref, remote_repo, "refs/heads/master"));
 git_oid_cpy(&target, git_reference_target(ref));
 git_reference_free(ref);
 cl_git_pass(git_reference_create(&ref, remote_repo, "refs/pull/42/head", &target, 1, ((void*)0)));
 git_reference_free(ref);

 cl_set_cleanup(&cleanup_local_repo, "foo");
 cl_git_pass(git_repository_init(&repo, "foo", 1));

 cl_git_pass(git_remote_create(&origin, repo, GIT_REMOTE_ORIGIN, url));

 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_bool(config, "remote.origin.prune", 1));
 cl_git_pass(git_config_set_multivar(config, "remote.origin.fetch", "^$", "refs/pull/*/head:refs/remotes/origin/pr/*"));

 git_remote_free(origin);
 cl_git_pass(git_remote_lookup(&origin, repo, GIT_REMOTE_ORIGIN));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));

 assert_ref_exists(repo, "refs/remotes/origin/master");
 assert_ref_exists(repo, "refs/remotes/origin/pr/42");
 cl_git_pass(git_reference_list(&refnames, repo));
 cl_assert_equal_i(20, (int)refnames.count);
 git_strarray_free(&refnames);

 cl_git_pass(git_config_delete_multivar(config, "remote.origin.fetch", "refs"));
 cl_git_pass(git_config_set_multivar(config, "remote.origin.fetch", "^$", "refs/pull/*/head:refs/remotes/origin/pr/*"));
 cl_git_pass(git_config_set_multivar(config, "remote.origin.fetch", "^$", "refs/heads/*:refs/remotes/origin/*"));

 git_remote_free(origin);
 cl_git_pass(git_remote_lookup(&origin, repo, GIT_REMOTE_ORIGIN));
 options.callbacks.update_tips = update_tips_fail_on_call;
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));

 assert_ref_exists(repo, "refs/remotes/origin/master");
 assert_ref_exists(repo, "refs/remotes/origin/pr/42");
 cl_git_pass(git_reference_list(&refnames, repo));
 cl_assert_equal_i(20, (int)refnames.count);
 git_strarray_free(&refnames);

 cl_git_pass(git_config_delete_multivar(config, "remote.origin.fetch", "refs"));
 cl_git_pass(git_config_set_multivar(config, "remote.origin.fetch", "^$", "refs/heads/*:refs/remotes/origin/*"));
 cl_git_pass(git_config_set_multivar(config, "remote.origin.fetch", "^$", "refs/pull/*/head:refs/remotes/origin/pr/*"));

 git_remote_free(origin);
 cl_git_pass(git_remote_lookup(&origin, repo, GIT_REMOTE_ORIGIN));
 options.callbacks.update_tips = update_tips_fail_on_call;
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));

 git_config_free(config);
 git_strarray_free(&refnames);
 git_remote_free(origin);
 git_repository_free(repo);
}
