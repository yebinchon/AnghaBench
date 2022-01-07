
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_repository ;
typedef int git_remote ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_5__ {int* payload; int transfer_progress; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
typedef TYPE_2__ git_fetch_options ;
typedef int git_config ;


 int GIT_ENOTFOUND ;
 TYPE_2__ GIT_FETCH_OPTIONS_INIT ;
 int GIT_REMOTE_ORIGIN ;
 int assert_ref_exists (int *,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 char* cl_git_path_url (int ) ;
 int * cl_git_sandbox_init (char*) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_local_repo ;
 int git_config_free (int *) ;
 int git_config_set_bool (int *,char*,int) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_reference_create (int **,int *,char*,int ,int,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_remote_create (int **,int *,int ,char const*) ;
 int git_remote_fetch (int *,int *,TYPE_2__*,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int *,int ) ;
 int git_remote_prune_refs (int *) ;
 int git_repository_config (int **,int *) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_path (int *) ;
 int git_revparse_single (int **,int *,char*) ;
 int git_signature_free (int *) ;
 int git_signature_new (int **,int ,int ,int,int) ;
 int git_tag_create (int *,int *,char*,int *,int *,int ,int ) ;
 int tagger_email ;
 int tagger_message ;
 int tagger_name ;
 int transfer_cb ;

void test_network_fetchlocal__prune_tag(void)
{
 git_repository *repo;
 git_remote *origin;
 int callcount = 0;
 git_reference *ref;
 git_config *config;
 git_oid tag_id;
 git_signature *tagger;
 git_object *obj;

 git_repository *remote_repo = cl_git_sandbox_init("testrepo.git");
 const char *url = cl_git_path_url(git_repository_path(remote_repo));
 git_fetch_options options = GIT_FETCH_OPTIONS_INIT;

 options.callbacks.transfer_progress = transfer_cb;
 options.callbacks.payload = &callcount;

 cl_set_cleanup(&cleanup_local_repo, "foo");
 cl_git_pass(git_repository_init(&repo, "foo", 1));

 cl_git_pass(git_remote_create(&origin, repo, GIT_REMOTE_ORIGIN, url));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));
 git_remote_free(origin);

 cl_git_pass(git_revparse_single(&obj, repo, "origin/master"));

 cl_git_pass(git_reference_create(&ref, repo, "refs/remotes/origin/fake-remote", git_object_id(obj), 1, ((void*)0)));
 git_reference_free(ref);


 cl_git_pass(git_signature_new(&tagger, tagger_name, tagger_email, 123456789, 60));

 cl_git_pass(
  git_tag_create(&tag_id, repo,
    "some-tag", obj, tagger, tagger_message, 0)
 );
 git_signature_free(tagger);

 cl_git_pass(git_repository_config(&config, repo));
 cl_git_pass(git_config_set_bool(config, "remote.origin.prune", 1));
 git_config_free(config);
 cl_git_pass(git_remote_lookup(&origin, repo, GIT_REMOTE_ORIGIN));
 cl_assert_equal_i(1, git_remote_prune_refs(origin));
 cl_git_pass(git_remote_fetch(origin, ((void*)0), &options, ((void*)0)));

 assert_ref_exists(repo, "refs/tags/some-tag");
 cl_git_fail_with(GIT_ENOTFOUND, git_reference_lookup(&ref, repo, "refs/remotes/origin/fake-remote"));

 git_object_free(obj);
 git_remote_free(origin);

 git_repository_free(repo);
}
