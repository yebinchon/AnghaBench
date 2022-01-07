
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ ENOTDIR ;
 int GIT_ENOTFOUND ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ errno ;
 int futils__error_cannot_rmdir (int ,char*) ;
 scalar_t__ git__prefixcmp (int ,char const*) ;
 int git_buf_rtruncate_at_char (TYPE_1__*,char) ;
 scalar_t__ p_lstat_posixly (int ,struct stat*) ;
 int p_unlink (int ) ;

__attribute__((used)) static int futils__rm_first_parent(git_buf *path, const char *ceiling)
{
 int error = GIT_ENOTFOUND;
 struct stat st;

 while (error == GIT_ENOTFOUND) {
  git_buf_rtruncate_at_char(path, '/');

  if (!path->size || git__prefixcmp(path->ptr, ceiling) != 0)
   error = 0;
  else if (p_lstat_posixly(path->ptr, &st) == 0) {
   if (S_ISREG(st.st_mode) || S_ISLNK(st.st_mode))
    error = p_unlink(path->ptr);
   else if (!S_ISDIR(st.st_mode))
    error = -1;
  } else if (errno != ENOTDIR)
   error = -1;
 }

 if (error)
  futils__error_cannot_rmdir(path->ptr, "cannot remove parent");

 return error;
}
