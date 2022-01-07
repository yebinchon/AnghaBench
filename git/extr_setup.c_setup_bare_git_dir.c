
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;
struct repository_format {int dummy; } ;


 int GIT_IMPLICIT_WORK_TREE_ENVIRONMENT ;
 int GIT_WORK_TREE_ENVIRONMENT ;
 int _ (char*) ;
 scalar_t__ chdir (char*) ;
 scalar_t__ check_repository_format_gently (char*,struct repository_format*,int*) ;
 int die_errno (int ) ;
 scalar_t__ getenv (int ) ;
 scalar_t__ git_work_tree_cfg ;
 int inside_git_dir ;
 scalar_t__ inside_work_tree ;
 int offset_1st_component (char*) ;
 int set_git_dir (char*) ;
 int setenv (int ,char*,int) ;
 char const* setup_explicit_git_dir (char const*,struct strbuf*,struct repository_format*,int*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 char* xmemdupz (char*,int) ;

__attribute__((used)) static const char *setup_bare_git_dir(struct strbuf *cwd, int offset,
          struct repository_format *repo_fmt,
          int *nongit_ok)
{
 int root_len;

 if (check_repository_format_gently(".", repo_fmt, nongit_ok))
  return ((void*)0);

 setenv(GIT_IMPLICIT_WORK_TREE_ENVIRONMENT, "0", 1);


 if (getenv(GIT_WORK_TREE_ENVIRONMENT) || git_work_tree_cfg) {
  static const char *gitdir;

  gitdir = offset == cwd->len ? "." : xmemdupz(cwd->buf, offset);
  if (chdir(cwd->buf))
   die_errno(_("cannot come back to cwd"));
  return setup_explicit_git_dir(gitdir, cwd, repo_fmt, nongit_ok);
 }

 inside_git_dir = 1;
 inside_work_tree = 0;
 if (offset != cwd->len) {
  if (chdir(cwd->buf))
   die_errno(_("cannot come back to cwd"));
  root_len = offset_1st_component(cwd->buf);
  strbuf_setlen(cwd, offset > root_len ? offset : root_len);
  set_git_dir(cwd->buf);
 }
 else
  set_git_dir(".");
 return ((void*)0);
}
