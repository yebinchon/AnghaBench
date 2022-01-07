
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_rebase_options ;
struct TYPE_16__ {int type; int head_detached; int orig_head_name; int onto_id; int orig_head_id; int state_path; int * repo; } ;
typedef TYPE_1__ git_rebase ;
struct TYPE_17__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_REBASE ;



 int GIT_REBASE_TYPE_NONE ;
 int HEAD_FILE ;
 int HEAD_NAME_FILE ;
 int ONTO_FILE ;
 int ORIG_DETACHED_HEAD ;
 int ORIG_HEAD_FILE ;
 int abort () ;
 int assert (int *) ;
 int git_buf_detach (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 size_t git_buf_len (TYPE_2__*) ;
 int git_buf_puts (TYPE_2__*,int ) ;
 int git_buf_rtrim (TYPE_2__*) ;
 int git_buf_truncate (TYPE_2__*,size_t) ;
 int git_error_set (int ,char*) ;
 int git_futils_readbuffer (TYPE_2__*,int ) ;
 int git_oid_fromstr (int *,int ) ;
 int git_path_isfile (int ) ;
 int git_rebase_free (TYPE_1__*) ;
 scalar_t__ rebase_alloc (TYPE_1__**,int const*) ;
 int rebase_check_versions (int const*) ;
 int rebase_open_merge (TYPE_1__*) ;
 int rebase_state_type (int*,int *,int *) ;
 scalar_t__ strcmp (int ,int ) ;

int git_rebase_open(
 git_rebase **out,
 git_repository *repo,
 const git_rebase_options *given_opts)
{
 git_rebase *rebase;
 git_buf path = GIT_BUF_INIT, orig_head_name = GIT_BUF_INIT,
  orig_head_id = GIT_BUF_INIT, onto_id = GIT_BUF_INIT;
 size_t state_path_len;
 int error;

 assert(repo);

 if ((error = rebase_check_versions(given_opts)) < 0)
  return error;

 if (rebase_alloc(&rebase, given_opts) < 0)
  return -1;

 rebase->repo = repo;

 if ((error = rebase_state_type(&rebase->type, &rebase->state_path, repo)) < 0)
  goto done;

 if (rebase->type == GIT_REBASE_TYPE_NONE) {
  git_error_set(GIT_ERROR_REBASE, "there is no rebase in progress");
  error = GIT_ENOTFOUND;
  goto done;
 }

 if ((error = git_buf_puts(&path, rebase->state_path)) < 0)
  goto done;

 state_path_len = git_buf_len(&path);

 if ((error = git_buf_joinpath(&path, path.ptr, HEAD_NAME_FILE)) < 0 ||
  (error = git_futils_readbuffer(&orig_head_name, path.ptr)) < 0)
  goto done;

 git_buf_rtrim(&orig_head_name);

 if (strcmp(ORIG_DETACHED_HEAD, orig_head_name.ptr) == 0)
  rebase->head_detached = 1;

 git_buf_truncate(&path, state_path_len);

 if ((error = git_buf_joinpath(&path, path.ptr, ORIG_HEAD_FILE)) < 0)
  goto done;

 if (!git_path_isfile(path.ptr)) {

  git_buf_truncate(&path, state_path_len);

  if ((error = git_buf_joinpath(&path, path.ptr, HEAD_FILE)) < 0)
   goto done;
 }

 if ((error = git_futils_readbuffer(&orig_head_id, path.ptr)) < 0)
  goto done;

 git_buf_rtrim(&orig_head_id);

 if ((error = git_oid_fromstr(&rebase->orig_head_id, orig_head_id.ptr)) < 0)
  goto done;

 git_buf_truncate(&path, state_path_len);

 if ((error = git_buf_joinpath(&path, path.ptr, ONTO_FILE)) < 0 ||
  (error = git_futils_readbuffer(&onto_id, path.ptr)) < 0)
  goto done;

 git_buf_rtrim(&onto_id);

 if ((error = git_oid_fromstr(&rebase->onto_id, onto_id.ptr)) < 0)
  goto done;

 if (!rebase->head_detached)
  rebase->orig_head_name = git_buf_detach(&orig_head_name);

 switch (rebase->type) {
 case 129:
  git_error_set(GIT_ERROR_REBASE, "interactive rebase is not supported");
  error = -1;
  break;
 case 128:
  error = rebase_open_merge(rebase);
  break;
 case 130:
  git_error_set(GIT_ERROR_REBASE, "patch application rebase is not supported");
  error = -1;
  break;
 default:
  abort();
 }

done:
 if (error == 0)
  *out = rebase;
 else
  git_rebase_free(rebase);

 git_buf_dispose(&path);
 git_buf_dispose(&orig_head_name);
 git_buf_dispose(&orig_head_id);
 git_buf_dispose(&onto_id);
 return error;
}
