
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ count; int member_0; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;
struct TYPE_10__ {int* payload; int transfer_progress; } ;
struct TYPE_9__ {TYPE_4__ callbacks; } ;
typedef TYPE_2__ git_fetch_options ;


 TYPE_2__ GIT_FETCH_OPTIONS_INIT ;
 int GIT_REMOTE_ORIGIN ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 char* cl_git_path_url (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_local_repo ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_list (TYPE_1__*,int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_fetch (int *,int *,TYPE_2__*,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,int ) ;
 int git_remote_prune (int *,TYPE_4__*) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_path (int *) ;
 int git_strarray_free (TYPE_1__*) ;
 int transfer_cb ;

void test_network_fetchlocal__prune(void)
{
 git_repository *repo;
 git_remote *origin;
 int callcount = 0;
 git_strarray refnames = {0};
 git_reference *ref;
 git_repository *remote_repo = cl_git_sandbox_init("testrepo.git");
 const char *url = cl_git_path_url(git_repository_path(remote_repo));
 git_fetch_options options = GIT_FETCH_OPTIONS_INIT;

 options.callbacks.transfer_progress = transfer_cb;
 options.callbacks.payload = &callcount;

 cl_set_cleanup(&cleanup_local_repo, "foo");
 cl_git_pass(git_repository_init(&repo, "foo", 1));

 cl_git_pass(git_remote_create(&origin, repo, GIT_REMOTE_ORIGIN, url));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));

 cl_git_pass(git_reference_list(&refnames, repo));
 cl_assert_equal_i(19, (int)refnames.count);
 cl_assert(callcount > 0);
 git_strarray_free(&refnames);
 git_remote_free(origin);

 cl_git_pass(git_reference_lookup(&ref, remote_repo, "refs/heads/br2"));
 cl_git_pass(git_reference_delete(ref));
 git_reference_free(ref);

 cl_git_pass(git_remote_lookup(&origin, repo, GIT_REMOTE_ORIGIN));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));
 cl_git_pass(git_remote_prune(origin, &options.callbacks));

 cl_git_pass(git_reference_list(&refnames, repo));
 cl_assert_equal_i(18, (int)refnames.count);
 git_strarray_free(&refnames);
 git_remote_free(origin);

 cl_git_pass(git_reference_lookup(&ref, remote_repo, "refs/heads/packed"));
 cl_git_pass(git_reference_delete(ref));
 git_reference_free(ref);

 cl_git_pass(git_remote_lookup(&origin, repo, GIT_REMOTE_ORIGIN));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));
 cl_git_pass(git_remote_prune(origin, &options.callbacks));

 cl_git_pass(git_reference_list(&refnames, repo));
 cl_assert_equal_i(17, (int)refnames.count);
 git_strarray_free(&refnames);
 git_remote_free(origin);

 git_repository_free(repo);
}
