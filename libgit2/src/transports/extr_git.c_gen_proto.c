
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_ERROR_NET ;
 int git_buf_grow (int *,size_t) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,unsigned int,char const*,char*,int ,char*) ;
 int git_buf_put (int *,char const*,int) ;
 int git_buf_putc (int *,char) ;
 int git_error_set (int ,char*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int gen_proto(git_buf *request, const char *cmd, const char *url)
{
 char *delim, *repo;
 char host[] = "host=";
 size_t len;

 delim = strchr(url, '/');
 if (delim == ((void*)0)) {
  git_error_set(GIT_ERROR_NET, "malformed URL");
  return -1;
 }

 repo = delim;
 if (repo[1] == '~')
  ++repo;

 delim = strchr(url, ':');
 if (delim == ((void*)0))
  delim = strchr(url, '/');

 len = 4 + strlen(cmd) + 1 + strlen(repo) + 1 + strlen(host) + (delim - url) + 1;

 git_buf_grow(request, len);
 git_buf_printf(request, "%04x%s %s%c%s",
  (unsigned int)(len & 0x0FFFF), cmd, repo, 0, host);
 git_buf_put(request, url, delim - url);
 git_buf_putc(request, '\0');

 if (git_buf_oom(request))
  return -1;

 return 0;
}
