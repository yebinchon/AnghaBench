
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
typedef int (* git_repository_create_cb ) (int **,char const*,int ,int ) ;
typedef int git_repository ;
typedef int git_remote ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_1__ git_error_state ;
struct TYPE_12__ {int (* repository_cb ) (int **,char const*,int ,int ) ;scalar_t__ local; int checkout_branch; int checkout_opts; int fetch_opts; int repository_cb_payload; int bare; } ;
typedef TYPE_2__ git_clone_options ;


 scalar_t__ GIT_CLONE_LOCAL_NO_LINKS ;
 TYPE_2__ GIT_CLONE_OPTIONS_INIT ;
 int GIT_CLONE_OPTIONS_VERSION ;
 int GIT_EEXISTS ;
 int GIT_ERROR_CHECK_VERSION (TYPE_2__*,int ,char*) ;
 int GIT_ERROR_INVALID ;
 int GIT_RMDIR_REMOVE_FILES ;
 int GIT_RMDIR_SKIP_ROOT ;
 int assert (int ) ;
 int clone_into (int *,int *,int *,int *,int ) ;
 int clone_local_into (int *,int *,int *,int *,int ,int) ;
 int create_and_configure_origin (int **,int *,char const*,TYPE_2__*) ;
 int default_repository_create (int **,char const*,int ,int ) ;
 int git_clone__should_clone_local (char const*,scalar_t__) ;
 int git_error_set (int ,char*,char const*) ;
 int git_error_state_capture (TYPE_1__*,int) ;
 int git_error_state_restore (TYPE_1__*) ;
 int git_futils_rmdir_r (char const*,int *,int ) ;
 scalar_t__ git_path_exists (char const*) ;
 int git_path_is_empty_dir (char const*) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;
 int memcpy (TYPE_2__*,TYPE_2__ const*,int) ;

__attribute__((used)) static int git__clone(
 git_repository **out,
 const char *url,
 const char *local_path,
 const git_clone_options *_options,
 int use_existing)
{
 int error = 0;
 git_repository *repo = ((void*)0);
 git_remote *origin;
 git_clone_options options = GIT_CLONE_OPTIONS_INIT;
 uint32_t rmdir_flags = GIT_RMDIR_REMOVE_FILES;
 git_repository_create_cb repository_cb;

 assert(out && url && local_path);

 if (_options)
  memcpy(&options, _options, sizeof(git_clone_options));

 GIT_ERROR_CHECK_VERSION(&options, GIT_CLONE_OPTIONS_VERSION, "git_clone_options");


 if (git_path_exists(local_path) && !use_existing && !git_path_is_empty_dir(local_path)) {
  git_error_set(GIT_ERROR_INVALID,
   "'%s' exists and is not an empty directory", local_path);
  return GIT_EEXISTS;
 }


 if (git_path_exists(local_path))
  rmdir_flags |= GIT_RMDIR_SKIP_ROOT;

 if (options.repository_cb)
  repository_cb = options.repository_cb;
 else
  repository_cb = default_repository_create;

 if ((error = repository_cb(&repo, local_path, options.bare, options.repository_cb_payload)) < 0)
  return error;

 if (!(error = create_and_configure_origin(&origin, repo, url, &options))) {
  int clone_local = git_clone__should_clone_local(url, options.local);
  int link = options.local != GIT_CLONE_LOCAL_NO_LINKS;

  if (clone_local == 1)
   error = clone_local_into(
    repo, origin, &options.fetch_opts, &options.checkout_opts,
    options.checkout_branch, link);
  else if (clone_local == 0)
   error = clone_into(
    repo, origin, &options.fetch_opts, &options.checkout_opts,
    options.checkout_branch);
  else
   error = -1;

  git_remote_free(origin);
 }

 if (error != 0) {
  git_error_state last_error = {0};
  git_error_state_capture(&last_error, error);

  git_repository_free(repo);
  repo = ((void*)0);

  (void)git_futils_rmdir_r(local_path, ((void*)0), rmdir_flags);

  git_error_state_restore(&last_error);
 }

 *out = repo;
 return error;
}
