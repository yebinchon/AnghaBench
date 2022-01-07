
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct stat {int dummy; } ;
struct git_futils_mkdir_options {int member_0; } ;
typedef int mode_t ;
struct TYPE_7__ {char const* ptr; scalar_t__ size; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ ENOENT ;
 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_OS ;
 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_SKIP_LAST ;
 int GIT_MKDIR_SKIP_LAST2 ;
 int assert (int) ;
 scalar_t__ errno ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_error_set (int ,char*,char*) ;
 int git_futils_mkdir_relative (char const*,char*,int ,int,struct git_futils_mkdir_options*) ;
 int git_path_dirname_r (TYPE_1__*,char*) ;
 int git_path_root (char const*) ;
 int mkdir_canonicalize (TYPE_1__*,int) ;
 int mkdir_validate_dir (char*,struct stat*,int ,int,struct git_futils_mkdir_options*) ;
 int mkdir_validate_mode (char*,struct stat*,int,int ,int,struct git_futils_mkdir_options*) ;
 int p_lstat (char*,struct stat*) ;

int git_futils_mkdir(
 const char *path,
 mode_t mode,
 uint32_t flags)
{
 git_buf make_path = GIT_BUF_INIT, parent_path = GIT_BUF_INIT;
 const char *relative;
 struct git_futils_mkdir_options opts = { 0 };
 struct stat st;
 size_t depth = 0;
 int len = 0, root_len, error;

 if ((error = git_buf_puts(&make_path, path)) < 0 ||
  (error = mkdir_canonicalize(&make_path, flags)) < 0 ||
  (error = git_buf_puts(&parent_path, make_path.ptr)) < 0 ||
  make_path.size == 0)
  goto done;

 root_len = git_path_root(make_path.ptr);




 for (relative = make_path.ptr; parent_path.size; ) {
  error = p_lstat(parent_path.ptr, &st);

  if (error == 0) {
   break;
  } else if (errno != ENOENT) {
   git_error_set(GIT_ERROR_OS, "failed to stat '%s'", parent_path.ptr);
   error = -1;
   goto done;
  }

  depth++;


  if ((len = git_path_dirname_r(&parent_path, parent_path.ptr)) < 0) {
   error = len;
   goto done;
  }

  assert(len);







  if ((len == 1 && parent_path.ptr[0] == '.') ||
      (len == 1 && parent_path.ptr[0] == '/') ||
      len <= root_len) {
   relative = make_path.ptr;
   break;
  }

  relative = make_path.ptr + len + 1;


  if ((flags & GIT_MKDIR_PATH) == 0)
   break;
 }




 if (depth == 0) {
  error = mkdir_validate_dir(make_path.ptr, &st, mode, flags, &opts);

  if (!error)
   error = mkdir_validate_mode(
    make_path.ptr, &st, 1, mode, flags, &opts);

  goto done;
 }




 flags &= ~(GIT_MKDIR_SKIP_LAST2 | GIT_MKDIR_SKIP_LAST);

 error = git_futils_mkdir_relative(relative,
  parent_path.size ? parent_path.ptr : ((void*)0), mode, flags, &opts);

done:
 git_buf_dispose(&make_path);
 git_buf_dispose(&parent_path);
 return error;
}
