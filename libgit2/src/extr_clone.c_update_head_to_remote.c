
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int oid; int name; } ;
typedef TYPE_1__ git_remote_head ;
typedef int git_remote ;
typedef int git_refspec ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_NET ;
 int GIT_HEAD_FILE ;
 int GIT_REFS_HEADS_MASTER_FILE ;
 int GIT_REMOTE_ORIGIN ;
 int assert (TYPE_1__ const*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_error_set (int ,char*) ;
 int git_refspec_transform (int *,int *,int ) ;
 int * git_remote__matching_refspec (int *,int ) ;
 int git_remote_default_branch (int *,int *) ;
 int git_remote_ls (TYPE_1__ const***,size_t*,int *) ;
 int git_repository_set_head_detached (int *,int const*) ;
 int setup_tracking_config (int *,char*,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int update_head_to_new_branch (int *,int const*,int ,char const*) ;

__attribute__((used)) static int update_head_to_remote(
  git_repository *repo,
  git_remote *remote,
  const char *reflog_message)
{
 int error = 0;
 size_t refs_len;
 git_refspec *refspec;
 const git_remote_head *remote_head, **refs;
 const git_oid *remote_head_id;
 git_buf remote_master_name = GIT_BUF_INIT;
 git_buf branch = GIT_BUF_INIT;

 if ((error = git_remote_ls(&refs, &refs_len, remote)) < 0)
  return error;


 if (refs_len == 0 || strcmp(refs[0]->name, GIT_HEAD_FILE))
  return setup_tracking_config(
   repo, "master", GIT_REMOTE_ORIGIN, GIT_REFS_HEADS_MASTER_FILE);


 remote_head = refs[0];
 assert(remote_head);

 remote_head_id = &remote_head->oid;

 error = git_remote_default_branch(&branch, remote);
 if (error == GIT_ENOTFOUND) {
  error = git_repository_set_head_detached(
   repo, remote_head_id);
  goto cleanup;
 }

 refspec = git_remote__matching_refspec(remote, git_buf_cstr(&branch));

 if (refspec == ((void*)0)) {
  git_error_set(GIT_ERROR_NET, "the remote's default branch does not fit the refspec configuration");
  error = GIT_EINVALIDSPEC;
  goto cleanup;
 }


 if ((error = git_refspec_transform(
  &remote_master_name,
  refspec,
  git_buf_cstr(&branch))) < 0)
  goto cleanup;

 error = update_head_to_new_branch(
  repo,
  remote_head_id,
  git_buf_cstr(&branch),
  reflog_message);

cleanup:
 git_buf_dispose(&remote_master_name);
 git_buf_dispose(&branch);

 return error;
}
