
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_EEXISTS ;
 int GIT_ERROR_CHECKOUT ;
 int INT_MAX ;
 int git_buf_cstr (TYPE_1__*) ;
 size_t git_buf_len (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,int) ;
 int git_buf_putc (TYPE_1__*,char) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_buf_truncate (TYPE_1__*,size_t) ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ git_path_exists (int ) ;

__attribute__((used)) static int checkout_path_suffixed(git_buf *path, const char *suffix)
{
 size_t path_len;
 int i = 0, error = 0;

 if ((error = git_buf_putc(path, '~')) < 0 || (error = git_buf_puts(path, suffix)) < 0)
  return -1;

 path_len = git_buf_len(path);

 while (git_path_exists(git_buf_cstr(path)) && i < INT_MAX) {
  git_buf_truncate(path, path_len);

  if ((error = git_buf_putc(path, '_')) < 0 ||
   (error = git_buf_printf(path, "%d", i)) < 0)
   return error;

  i++;
 }

 if (i == INT_MAX) {
  git_buf_truncate(path, path_len);

  git_error_set(GIT_ERROR_CHECKOUT, "could not write '%s': working directory file exists", path->ptr);
  return GIT_EEXISTS;
 }

 return 0;
}
