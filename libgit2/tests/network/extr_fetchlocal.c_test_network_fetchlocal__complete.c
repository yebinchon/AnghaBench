
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
struct TYPE_8__ {int* payload; int transfer_progress; } ;
struct TYPE_10__ {TYPE_1__ callbacks; } ;
typedef TYPE_3__ git_fetch_options ;


 TYPE_3__ GIT_FETCH_OPTIONS_INIT ;
 int GIT_REMOTE_ORIGIN ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 char* cl_git_fixture_url (char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_local_repo ;
 int git_reference_list (TYPE_2__*,int *) ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_fetch (int *,int *,TYPE_3__*,int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_strarray_free (TYPE_2__*) ;
 int transfer_cb ;

void test_network_fetchlocal__complete(void)
{
 git_repository *repo;
 git_remote *origin;
 int callcount = 0;
 git_strarray refnames = {0};

 const char *url = cl_git_fixture_url("testrepo.git");
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
 git_repository_free(repo);
}
