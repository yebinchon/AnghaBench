
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct stat {int st_size; int st_mode; } ;


 int EEXIST ;
 struct strbuf STRBUF_INIT ;
 int S_ISLNK (int ) ;
 int adjust_shared_perm (char const*) ;
 int errno ;
 int is_absolute_path (char const*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 scalar_t__ mkdir (char const*,int) ;
 scalar_t__ strbuf_readlink (struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;

int mkdir_in_gitdir(const char *path)
{
 if (mkdir(path, 0777)) {
  int saved_errno = errno;
  struct stat st;
  struct strbuf sb = STRBUF_INIT;

  if (errno != EEXIST)
   return -1;







  if (lstat(path, &st) || !S_ISLNK(st.st_mode) ||
      strbuf_readlink(&sb, path, st.st_size) ||
      !is_absolute_path(sb.buf) ||
      mkdir(sb.buf, 0777)) {
   strbuf_release(&sb);
   errno = saved_errno;
   return -1;
  }
  strbuf_release(&sb);
 }
 return adjust_shared_perm(path);
}
