
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sockaddr_context {int * orig_dir; } ;
struct strbuf {int dummy; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;


 int AF_UNIX ;
 int ENAMETOOLONG ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ chdir_len (char const*,int) ;
 int errno ;
 char* find_last_dir_sep (char const*) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int * strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_getcwd (struct strbuf*) ;
 int strlen (char const*) ;

__attribute__((used)) static int unix_sockaddr_init(struct sockaddr_un *sa, const char *path,
         struct unix_sockaddr_context *ctx)
{
 int size = strlen(path) + 1;

 ctx->orig_dir = ((void*)0);
 if (size > sizeof(sa->sun_path)) {
  const char *slash = find_last_dir_sep(path);
  const char *dir;
  struct strbuf cwd = STRBUF_INIT;

  if (!slash) {
   errno = ENAMETOOLONG;
   return -1;
  }

  dir = path;
  path = slash + 1;
  size = strlen(path) + 1;
  if (size > sizeof(sa->sun_path)) {
   errno = ENAMETOOLONG;
   return -1;
  }
  if (strbuf_getcwd(&cwd))
   return -1;
  ctx->orig_dir = strbuf_detach(&cwd, ((void*)0));
  if (chdir_len(dir, slash - dir) < 0)
   return -1;
 }

 memset(sa, 0, sizeof(*sa));
 sa->sun_family = AF_UNIX;
 memcpy(sa->sun_path, path, size);
 return 0;
}
