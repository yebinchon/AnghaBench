
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct stat {int st_mode; } ;
struct object_id {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 scalar_t__ EACCES ;
 scalar_t__ ENOENT ;
 int REMOVE_DIR_EMPTY_ONLY ;
 int REMOVE_DIR_KEEP_NESTED_GIT ;
 int REMOVE_DIR_KEEP_TOPLEVEL ;
 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int resolve_gitlink_ref (int ,char*,struct object_id*) ;
 int rmdir (int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int unlink (int ) ;

__attribute__((used)) static int remove_dir_recurse(struct strbuf *path, int flag, int *kept_up)
{
 DIR *dir;
 struct dirent *e;
 int ret = 0, original_len = path->len, len, kept_down = 0;
 int only_empty = (flag & REMOVE_DIR_EMPTY_ONLY);
 int keep_toplevel = (flag & REMOVE_DIR_KEEP_TOPLEVEL);
 struct object_id submodule_head;

 if ((flag & REMOVE_DIR_KEEP_NESTED_GIT) &&
     !resolve_gitlink_ref(path->buf, "HEAD", &submodule_head)) {

  if (kept_up)
   *kept_up = 1;
  return 0;
 }

 flag &= ~REMOVE_DIR_KEEP_TOPLEVEL;
 dir = opendir(path->buf);
 if (!dir) {
  if (errno == ENOENT)
   return keep_toplevel ? -1 : 0;
  else if (errno == EACCES && !keep_toplevel)




   return rmdir(path->buf);
  else
   return -1;
 }
 strbuf_complete(path, '/');

 len = path->len;
 while ((e = readdir(dir)) != ((void*)0)) {
  struct stat st;
  if (is_dot_or_dotdot(e->d_name))
   continue;

  strbuf_setlen(path, len);
  strbuf_addstr(path, e->d_name);
  if (lstat(path->buf, &st)) {
   if (errno == ENOENT)




    continue;

  } else if (S_ISDIR(st.st_mode)) {
   if (!remove_dir_recurse(path, flag, &kept_down))
    continue;
  } else if (!only_empty &&
      (!unlink(path->buf) || errno == ENOENT)) {
   continue;
  }


  ret = -1;
  break;
 }
 closedir(dir);

 strbuf_setlen(path, original_len);
 if (!ret && !keep_toplevel && !kept_down)
  ret = (!rmdir(path->buf) || errno == ENOENT) ? 0 : -1;
 else if (kept_up)




  *kept_up = !ret;
 return ret;
}
