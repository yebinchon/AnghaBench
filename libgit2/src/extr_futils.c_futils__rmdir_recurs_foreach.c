
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {scalar_t__ depth; int flags; int base; } ;
typedef TYPE_2__ futils__rmdir_data ;


 scalar_t__ EBUSY ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 scalar_t__ ENOTEMPTY ;
 scalar_t__ FUTILS_MAX_DEPTH ;
 int GIT_RMDIR_REMOVE_BLOCKERS ;
 int GIT_RMDIR_REMOVE_FILES ;
 int GIT_RMDIR_SKIP_NONEMPTY ;
 int GIT_RMDIR_SKIP_ROOT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 int futils__error_cannot_rmdir (int ,char*) ;
 int futils__rm_first_parent (TYPE_1__*,int ) ;
 int git_path_direach (TYPE_1__*,int ,int (*) (void*,TYPE_1__*),TYPE_2__*) ;
 int git_path_set_error (scalar_t__,int ,char*) ;
 int p_lstat_posixly (int ,struct stat*) ;
 int p_rmdir (int ) ;
 scalar_t__ p_unlink (int ) ;

__attribute__((used)) static int futils__rmdir_recurs_foreach(void *opaque, git_buf *path)
{
 int error = 0;
 futils__rmdir_data *data = opaque;
 struct stat st;

 if (data->depth > FUTILS_MAX_DEPTH)
  error = futils__error_cannot_rmdir(
   path->ptr, "directory nesting too deep");

 else if ((error = p_lstat_posixly(path->ptr, &st)) < 0) {
  if (errno == ENOENT)
   error = 0;
  else if (errno == ENOTDIR) {

   if ((data->flags & GIT_RMDIR_REMOVE_BLOCKERS) != 0)
    error = futils__rm_first_parent(path, data->base);
   else
    futils__error_cannot_rmdir(
     path->ptr, "parent is not directory");
  }
  else
   error = git_path_set_error(errno, path->ptr, "rmdir");
 }

 else if (S_ISDIR(st.st_mode)) {
  data->depth++;

  error = git_path_direach(path, 0, futils__rmdir_recurs_foreach, data);

  data->depth--;

  if (error < 0)
   return error;

  if (data->depth == 0 && (data->flags & GIT_RMDIR_SKIP_ROOT) != 0)
   return error;

  if ((error = p_rmdir(path->ptr)) < 0) {
   if ((data->flags & GIT_RMDIR_SKIP_NONEMPTY) != 0 &&
    (errno == ENOTEMPTY || errno == EEXIST || errno == EBUSY))
    error = 0;
   else
    error = git_path_set_error(errno, path->ptr, "rmdir");
  }
 }

 else if ((data->flags & GIT_RMDIR_REMOVE_FILES) != 0) {
  if (p_unlink(path->ptr) < 0)
   error = git_path_set_error(errno, path->ptr, "remove");
 }

 else if ((data->flags & GIT_RMDIR_SKIP_NONEMPTY) == 0)
  error = futils__error_cannot_rmdir(path->ptr, "still present");

 return error;
}
