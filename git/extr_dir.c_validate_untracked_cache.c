
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct untracked_cache_dir {int recurse; } ;
struct pathspec {scalar_t__ nr; } ;
struct TYPE_8__ {int oid; } ;
struct TYPE_7__ {int oid; } ;
struct dir_struct {int flags; scalar_t__ exclude_per_dir; TYPE_3__ ss_excludes_file; TYPE_4__* untracked; TYPE_2__ ss_info_exclude; TYPE_1__* exclude_list_group; scalar_t__ unmanaged_exclude_files; } ;
struct TYPE_9__ {int dir_flags; scalar_t__ exclude_per_dir; TYPE_3__ ss_excludes_file; TYPE_2__ ss_info_exclude; struct untracked_cache_dir* root; } ;
struct TYPE_6__ {scalar_t__ nr; } ;


 int DIR_COLLECT_IGNORED ;
 int DIR_SHOW_IGNORED ;
 int DIR_SHOW_IGNORED_TOO ;
 int DIR_SHOW_OTHER_DIRECTORIES ;
 size_t EXC_CMDL ;
 int _ (char*) ;
 int git_env_bool (char*,int ) ;
 int ident_in_untracked (TYPE_4__*) ;
 int invalidate_gitignore (TYPE_4__*,struct untracked_cache_dir*) ;
 int memset (struct untracked_cache_dir*,int ,int const) ;
 int oideq (int *,int *) ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 int warning (int ) ;
 struct untracked_cache_dir* xmalloc (int const) ;

__attribute__((used)) static struct untracked_cache_dir *validate_untracked_cache(struct dir_struct *dir,
            int base_len,
            const struct pathspec *pathspec)
{
 struct untracked_cache_dir *root;
 static int untracked_cache_disabled = -1;

 if (!dir->untracked)
  return ((void*)0);
 if (untracked_cache_disabled < 0)
  untracked_cache_disabled = git_env_bool("GIT_DISABLE_UNTRACKED_CACHE", 0);
 if (untracked_cache_disabled)
  return ((void*)0);
 if (dir->unmanaged_exclude_files)
  return ((void*)0);







 if (base_len || (pathspec && pathspec->nr))
  return ((void*)0);


 if (dir->flags != dir->untracked->dir_flags ||





     !(dir->flags & DIR_SHOW_OTHER_DIRECTORIES) ||

     (dir->flags & (DIR_SHOW_IGNORED | DIR_SHOW_IGNORED_TOO |
      DIR_COLLECT_IGNORED)))
  return ((void*)0);





 if (dir->exclude_per_dir != dir->untracked->exclude_per_dir &&
     strcmp(dir->exclude_per_dir, dir->untracked->exclude_per_dir))
  return ((void*)0);





 if (dir->exclude_list_group[EXC_CMDL].nr)
  return ((void*)0);

 if (!ident_in_untracked(dir->untracked)) {
  warning(_("untracked cache is disabled on this system or location"));
  return ((void*)0);
 }

 if (!dir->untracked->root) {
  const int len = sizeof(*dir->untracked->root);
  dir->untracked->root = xmalloc(len);
  memset(dir->untracked->root, 0, len);
 }


 root = dir->untracked->root;
 if (!oideq(&dir->ss_info_exclude.oid,
     &dir->untracked->ss_info_exclude.oid)) {
  invalidate_gitignore(dir->untracked, root);
  dir->untracked->ss_info_exclude = dir->ss_info_exclude;
 }
 if (!oideq(&dir->ss_excludes_file.oid,
     &dir->untracked->ss_excludes_file.oid)) {
  invalidate_gitignore(dir->untracked, root);
  dir->untracked->ss_excludes_file = dir->ss_excludes_file;
 }


 root->recurse = 1;
 return root;
}
