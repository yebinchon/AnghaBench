
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {int flags; } ;


 int DIR_SHOW_OTHER_DIRECTORIES ;
 int DT_DIR ;
 struct strbuf STRBUF_INIT ;
 int is_directory (int ) ;
 char* memchr (char const*,char,int) ;
 scalar_t__ path_none ;
 scalar_t__ simplify_away (int ,int ,struct pathspec const*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;
 scalar_t__ treat_one_path (struct dir_struct*,int *,struct index_state*,struct strbuf*,int,struct pathspec const*,int ,int *) ;

__attribute__((used)) static int treat_leading_path(struct dir_struct *dir,
         struct index_state *istate,
         const char *path, int len,
         const struct pathspec *pathspec)
{
 struct strbuf sb = STRBUF_INIT;
 int baselen, rc = 0;
 const char *cp;
 int old_flags = dir->flags;

 while (len && path[len - 1] == '/')
  len--;
 if (!len)
  return 1;
 baselen = 0;
 dir->flags &= ~DIR_SHOW_OTHER_DIRECTORIES;
 while (1) {
  cp = path + baselen + !!baselen;
  cp = memchr(cp, '/', path + len - cp);
  if (!cp)
   baselen = len;
  else
   baselen = cp - path;
  strbuf_setlen(&sb, 0);
  strbuf_add(&sb, path, baselen);
  if (!is_directory(sb.buf))
   break;
  if (simplify_away(sb.buf, sb.len, pathspec))
   break;
  if (treat_one_path(dir, ((void*)0), istate, &sb, baselen, pathspec,
       DT_DIR, ((void*)0)) == path_none)
   break;
  if (len <= baselen) {
   rc = 1;
   break;
  }
 }
 strbuf_release(&sb);
 dir->flags = old_flags;
 return rc;
}
