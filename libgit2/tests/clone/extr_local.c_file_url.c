
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_clear (int *) ;
 int git_buf_printf (int *,char*,char const*,char const*) ;

__attribute__((used)) static int file_url(git_buf *buf, const char *host, const char *path)
{
 if (path[0] == '/')
  path++;

 git_buf_clear(buf);
 return git_buf_printf(buf, "file://%s/%s", host, path);
}
