
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char const* buf; } ;
struct repository_format {int dummy; } ;


 int DEFAULT_GIT_DIR_ENVIRONMENT ;
 int GIT_WORK_TREE_ENVIRONMENT ;
 int _ (char*) ;
 scalar_t__ chdir (char const*) ;
 scalar_t__ check_repository_format_gently (char const*,struct repository_format*,int*) ;
 int die_errno (int ) ;
 int free (char*) ;
 scalar_t__ getenv (int ) ;
 scalar_t__ git_work_tree_cfg ;
 scalar_t__ inside_git_dir ;
 int inside_work_tree ;
 int is_absolute_path (char const*) ;
 scalar_t__ is_bare_repository_cfg ;
 int offset_1st_component (char const*) ;
 char const* real_path (char const*) ;
 char* real_pathdup (char const*,int) ;
 int set_git_dir (char const*) ;
 int set_git_work_tree (char*) ;
 char* setup_explicit_git_dir (char const*,struct strbuf*,struct repository_format*,int*) ;
 int strbuf_addch (struct strbuf*,char) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const char *setup_discovered_git_dir(const char *gitdir,
         struct strbuf *cwd, int offset,
         struct repository_format *repo_fmt,
         int *nongit_ok)
{
 if (check_repository_format_gently(gitdir, repo_fmt, nongit_ok))
  return ((void*)0);


 if (getenv(GIT_WORK_TREE_ENVIRONMENT) || git_work_tree_cfg) {
  char *to_free = ((void*)0);
  const char *ret;

  if (offset != cwd->len && !is_absolute_path(gitdir))
   gitdir = to_free = real_pathdup(gitdir, 1);
  if (chdir(cwd->buf))
   die_errno(_("cannot come back to cwd"));
  ret = setup_explicit_git_dir(gitdir, cwd, repo_fmt, nongit_ok);
  free(to_free);
  return ret;
 }


 if (is_bare_repository_cfg > 0) {
  set_git_dir(offset == cwd->len ? gitdir : real_path(gitdir));
  if (chdir(cwd->buf))
   die_errno(_("cannot come back to cwd"));
  return ((void*)0);
 }


 set_git_work_tree(".");
 if (strcmp(gitdir, DEFAULT_GIT_DIR_ENVIRONMENT))
  set_git_dir(gitdir);
 inside_git_dir = 0;
 inside_work_tree = 1;
 if (offset >= cwd->len)
  return ((void*)0);


 if (offset != offset_1st_component(cwd->buf))
  offset++;

 strbuf_addch(cwd, '/');
 return cwd->buf + offset;
}
