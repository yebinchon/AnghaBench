
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {char* content; int mode; scalar_t__ path; } ;
typedef TYPE_1__ repo_template_item ;
typedef int mode_t ;
struct TYPE_12__ {int flags; scalar_t__ mode; char* template_path; char* description; } ;
typedef TYPE_2__ git_repository_init_options ;
typedef int git_config ;
struct TYPE_13__ {char* ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_CPDIR_CHMOD_DIRS ;
 int GIT_CPDIR_COPY_DOTFILES ;
 int GIT_CPDIR_COPY_SYMLINKS ;
 int GIT_CPDIR_SIMPLE_TO_MODE ;
 int GIT_DESC_FILE ;
 int GIT_ERROR_OS ;
 int GIT_MKDIR_CHMOD ;
 int GIT_MKDIR_PATH ;
 int GIT_REPOSITORY_INIT_BARE ;
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ;
 int GIT_REPOSITORY_INIT_RELATIVE_GITLINK ;
 scalar_t__ GIT_REPOSITORY_INIT_SHARED_UMASK ;
 int GIT_REPOSITORY_INIT__HAS_DOTGIT ;
 int GIT_REPOSITORY_INIT__NATURAL_WD ;
 scalar_t__ git__strcmp (char const*,char*) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_config_free (int *) ;
 int git_config_get_path (TYPE_3__*,int *,char*) ;
 int git_config_open_default (int **) ;
 int git_error_clear () ;
 int git_error_set (int ,char*) ;
 int git_futils_cp_r (char const*,char const*,int,int ) ;
 int git_futils_mkdir_relative (scalar_t__,char const*,int ,int,int *) ;
 int git_sysdir_find_template_dir (TYPE_3__*) ;
 scalar_t__ git_win32__set_hidden (char const*,int) ;
 int pick_dir_mode (TYPE_2__*) ;
 TYPE_1__* repo_template ;
 scalar_t__ repo_write_gitlink (char const*,char const*,int) ;
 int repo_write_template (char const*,int,scalar_t__,int ,int,char const*) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

__attribute__((used)) static int repo_init_structure(
 const char *repo_dir,
 const char *work_dir,
 git_repository_init_options *opts)
{
 int error = 0;
 repo_template_item *tpl;
 bool external_tpl =
  ((opts->flags & GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE) != 0);
 mode_t dmode = pick_dir_mode(opts);
 bool chmod = opts->mode != GIT_REPOSITORY_INIT_SHARED_UMASK;
 if ((opts->flags & GIT_REPOSITORY_INIT_BARE) == 0 &&
  (opts->flags & GIT_REPOSITORY_INIT__NATURAL_WD) == 0)
 {
  if (repo_write_gitlink(work_dir, repo_dir, opts->flags & GIT_REPOSITORY_INIT_RELATIVE_GITLINK) < 0)
   return -1;
 }


 if (external_tpl) {
  git_config *cfg = ((void*)0);
  const char *tdir = ((void*)0);
  bool default_template = 0;
  git_buf template_buf = GIT_BUF_INIT;

  if (opts->template_path)
   tdir = opts->template_path;
  else if ((error = git_config_open_default(&cfg)) >= 0) {
   if (!git_config_get_path(&template_buf, cfg, "init.templatedir"))
    tdir = template_buf.ptr;
   git_error_clear();
  }

  if (!tdir) {
   if (!(error = git_sysdir_find_template_dir(&template_buf)))
    tdir = template_buf.ptr;
   default_template = 1;
  }







  if (tdir && git__strcmp(tdir, "") != 0) {
   uint32_t cpflags = GIT_CPDIR_COPY_SYMLINKS |
    GIT_CPDIR_SIMPLE_TO_MODE |
    GIT_CPDIR_COPY_DOTFILES;
   if (opts->mode != GIT_REPOSITORY_INIT_SHARED_UMASK)
     cpflags |= GIT_CPDIR_CHMOD_DIRS;
   error = git_futils_cp_r(tdir, repo_dir, cpflags, dmode);
  }

  git_buf_dispose(&template_buf);
  git_config_free(cfg);

  if (error < 0) {
   if (!default_template)
    return error;


   git_error_clear();
   external_tpl = 0;
   error = 0;
  }
 }





 for (tpl = repo_template; !error && tpl->path; ++tpl) {
  if (!tpl->content) {
   uint32_t mkdir_flags = GIT_MKDIR_PATH;
   if (chmod)
    mkdir_flags |= GIT_MKDIR_CHMOD;

   error = git_futils_mkdir_relative(
    tpl->path, repo_dir, dmode, mkdir_flags, ((void*)0));
  }
  else if (!external_tpl) {
   const char *content = tpl->content;

   if (opts->description && strcmp(tpl->path, GIT_DESC_FILE) == 0)
    content = opts->description;

   error = repo_write_template(
    repo_dir, 0, tpl->path, tpl->mode, 0, content);
  }
 }

 return error;
}
