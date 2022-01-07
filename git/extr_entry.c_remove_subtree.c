
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 int die_errno (char*,int ) ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ rmdir (int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static void remove_subtree(struct strbuf *path)
{
 DIR *dir = opendir(path->buf);
 struct dirent *de;
 int origlen = path->len;

 if (!dir)
  die_errno("cannot opendir '%s'", path->buf);
 while ((de = readdir(dir)) != ((void*)0)) {
  struct stat st;

  if (is_dot_or_dotdot(de->d_name))
   continue;

  strbuf_addch(path, '/');
  strbuf_addstr(path, de->d_name);
  if (lstat(path->buf, &st))
   die_errno("cannot lstat '%s'", path->buf);
  if (S_ISDIR(st.st_mode))
   remove_subtree(path);
  else if (unlink(path->buf))
   die_errno("cannot unlink '%s'", path->buf);
  strbuf_setlen(path, origlen);
 }
 closedir(dir);
 if (rmdir(path->buf))
  die_errno("cannot rmdir '%s'", path->buf);
}
