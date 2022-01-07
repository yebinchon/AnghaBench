
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; int path; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 unsigned int WT_VALIDATE_WORKTREE_MISSING_OK ;
 int _ (char*) ;
 int file_exists (int ) ;
 int free (char*) ;
 int fspathcmp (char*,int ) ;
 int git_common_path (char*,int ) ;
 int is_absolute_path (int ) ;
 scalar_t__ is_directory (int ) ;
 scalar_t__ is_main_worktree (struct worktree const*) ;
 int read_gitfile_gently (int ,int*) ;
 int real_path (int) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addf_gently (struct strbuf*,int ,int,...) ;
 int strbuf_release (struct strbuf*) ;
 char* xstrdup_or_null (int ) ;

int validate_worktree(const struct worktree *wt, struct strbuf *errmsg,
        unsigned flags)
{
 struct strbuf wt_path = STRBUF_INIT;
 char *path = ((void*)0);
 int err, ret = -1;

 strbuf_addf(&wt_path, "%s/.git", wt->path);

 if (is_main_worktree(wt)) {
  if (is_directory(wt_path.buf)) {
   ret = 0;
   goto done;
  }






  strbuf_addf_gently(errmsg,
       _("'%s' at main working tree is not the repository directory"),
       wt_path.buf);
  goto done;
 }





 if (!is_absolute_path(wt->path)) {
  strbuf_addf_gently(errmsg,
       _("'%s' file does not contain absolute path to the working tree location"),
       git_common_path("worktrees/%s/gitdir", wt->id));
  goto done;
 }

 if (flags & WT_VALIDATE_WORKTREE_MISSING_OK &&
     !file_exists(wt->path)) {
  ret = 0;
  goto done;
 }

 if (!file_exists(wt_path.buf)) {
  strbuf_addf_gently(errmsg, _("'%s' does not exist"), wt_path.buf);
  goto done;
 }

 path = xstrdup_or_null(read_gitfile_gently(wt_path.buf, &err));
 if (!path) {
  strbuf_addf_gently(errmsg, _("'%s' is not a .git file, error code %d"),
       wt_path.buf, err);
  goto done;
 }

 ret = fspathcmp(path, real_path(git_common_path("worktrees/%s", wt->id)));

 if (ret)
  strbuf_addf_gently(errmsg, _("'%s' does not point back to '%s'"),
       wt->path, git_common_path("worktrees/%s", wt->id));
done:
 free(path);
 strbuf_release(&wt_path);
 return ret;
}
