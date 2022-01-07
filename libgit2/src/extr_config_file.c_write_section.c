
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (char*) ;
 char* escape_value (char const*) ;
 int git__free (char*) ;
 char const* git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char*) ;
 int git_buf_put (TYPE_1__*,char const*,int) ;
 int git_buf_putc (TYPE_1__*,char) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int write_section(git_buf *fbuf, const char *key)
{
 int result;
 const char *dot;
 git_buf buf = GIT_BUF_INIT;


 dot = strchr(key, '.');
 git_buf_putc(&buf, '[');
 if (dot == ((void*)0)) {
  git_buf_puts(&buf, key);
 } else {
  char *escaped;
  git_buf_put(&buf, key, dot - key);
  escaped = escape_value(dot + 1);
  GIT_ERROR_CHECK_ALLOC(escaped);
  git_buf_printf(&buf, " \"%s\"", escaped);
  git__free(escaped);
 }
 git_buf_puts(&buf, "]\n");

 if (git_buf_oom(&buf))
  return -1;

 result = git_buf_put(fbuf, git_buf_cstr(&buf), buf.size);
 git_buf_dispose(&buf);

 return result;
}
