
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_puts (TYPE_1__*,char const*) ;

int git_path_normalize_slashes(git_buf *out, const char *path)
{
 int error;
 char *p;

 if ((error = git_buf_puts(out, path)) < 0)
  return error;

 for (p = out->ptr; *p; p++) {
  if (*p == '\\')
   *p = '/';
 }

 return 0;
}
