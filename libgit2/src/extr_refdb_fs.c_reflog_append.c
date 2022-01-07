
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ fsync; int * repo; } ;
typedef TYPE_2__ refdb_fs_backend ;
typedef int git_signature ;
typedef int git_repository ;
struct TYPE_19__ {scalar_t__ type; int name; } ;
typedef TYPE_3__ git_reference ;
struct TYPE_17__ {int member_0; } ;
struct TYPE_20__ {TYPE_1__ member_0; } ;
typedef TYPE_4__ git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EDIRECTORY ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 int GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int GIT_REFLOG_FILE_MODE ;
 int GIT_RMDIR_SKIP_NONEMPTY ;
 int O_APPEND ;
 int O_CREAT ;
 int O_FSYNC ;
 int O_WRONLY ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_error_clear () ;
 int git_error_set (int ,char*,int ) ;
 int git_futils_mkpath2file (int ,int) ;
 int git_futils_rmdir_r (int ,int *,int ) ;
 int git_futils_writebuffer (int *,int ,int,int ) ;
 int git_oid_cpy (TYPE_4__*,TYPE_4__ const*) ;
 scalar_t__ git_path_isdir (int ) ;
 int git_reference_name_to_id (TYPE_4__*,int *,int ) ;
 int git_reference_symbolic_target (TYPE_3__ const*) ;
 TYPE_4__ const* git_reference_target (TYPE_3__ const*) ;
 int retrieve_reflog_path (int *,int *,int ) ;
 int serialize_reflog_entry (int *,TYPE_4__*,TYPE_4__*,int const*,char const*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int reflog_append(refdb_fs_backend *backend, const git_reference *ref, const git_oid *old, const git_oid *new, const git_signature *who, const char *message)
{
 int error, is_symbolic, open_flags;
 git_oid old_id = {{0}}, new_id = {{0}};
 git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;
 git_repository *repo = backend->repo;

 is_symbolic = ref->type == GIT_REFERENCE_SYMBOLIC;


 if (is_symbolic &&
     strcmp(ref->name, GIT_HEAD_FILE) &&
     !(old && new))
  return 0;



 if (old) {
  git_oid_cpy(&old_id, old);
 } else {
  error = git_reference_name_to_id(&old_id, repo, ref->name);
  if (error < 0 && error != GIT_ENOTFOUND)
   return error;
 }

 if (new) {
  git_oid_cpy(&new_id, new);
 } else {
  if (!is_symbolic) {
   git_oid_cpy(&new_id, git_reference_target(ref));
  } else {
   error = git_reference_name_to_id(&new_id, repo, git_reference_symbolic_target(ref));
   if (error < 0 && error != GIT_ENOTFOUND)
    return error;

   if (error == GIT_ENOTFOUND)
    return 0;

   git_error_clear();
  }
 }

 if ((error = serialize_reflog_entry(&buf, &old_id, &new_id, who, message)) < 0)
  goto cleanup;

 if ((error = retrieve_reflog_path(&path, repo, ref->name)) < 0)
  goto cleanup;

 if (((error = git_futils_mkpath2file(git_buf_cstr(&path), 0777)) < 0) &&
     (error != GIT_EEXISTS)) {
  goto cleanup;
 }




 if (git_path_isdir(git_buf_cstr(&path))) {
  if ((error = git_futils_rmdir_r(git_buf_cstr(&path), ((void*)0), GIT_RMDIR_SKIP_NONEMPTY)) < 0) {
   if (error == GIT_ENOTFOUND)
    error = 0;
  } else if (git_path_isdir(git_buf_cstr(&path))) {
   git_error_set(GIT_ERROR_REFERENCE, "cannot create reflog at '%s', there are reflogs beneath that folder",
    ref->name);
   error = GIT_EDIRECTORY;
  }

  if (error != 0)
   goto cleanup;
 }

 open_flags = O_WRONLY | O_CREAT | O_APPEND;

 if (backend->fsync)
  open_flags |= O_FSYNC;

 error = git_futils_writebuffer(&buf, git_buf_cstr(&path), open_flags, GIT_REFLOG_FILE_MODE);

cleanup:
 git_buf_dispose(&buf);
 git_buf_dispose(&path);

 return error;
}
