
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_4__ {int download_tags; } ;
typedef TYPE_1__ git_fetch_options ;


 TYPE_1__ GIT_FETCH_OPTIONS_INIT ;
 int GIT_REMOTE_DOWNLOAD_TAGS_ALL ;
 int GIT_REMOTE_DOWNLOAD_TAGS_AUTO ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_path_url (int ) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_remote_create (int *,int ,char*,int ) ;
 int git_remote_fetch (int ,int *,TYPE_1__*,int *) ;
 int remote ;
 int repo ;

void test_network_remote_local__tagopt(void)
{
 git_reference *ref;
 git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;

 cl_git_pass(git_remote_create(&remote, repo, "tagopt", cl_git_path_url(cl_fixture("testrepo.git"))));
 fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_ALL;
 cl_git_pass(git_remote_fetch(remote, ((void*)0), &fetch_opts, ((void*)0)));

 cl_git_pass(git_reference_lookup(&ref, repo, "refs/remotes/tagopt/master"));
 git_reference_free(ref);
 cl_git_pass(git_reference_lookup(&ref, repo, "refs/tags/hard_tag"));
 git_reference_free(ref);

 fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_AUTO;
 cl_git_pass(git_remote_fetch(remote, ((void*)0), &fetch_opts, ((void*)0)));
 cl_git_pass(git_reference_lookup(&ref, repo, "refs/remotes/tagopt/master"));
 git_reference_free(ref);
}
