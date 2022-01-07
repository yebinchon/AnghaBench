
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct untracked_cache_dir {int dummy; } ;
struct strbuf {char* buf; scalar_t__ len; } ;
struct index_state {int dummy; } ;
struct dir_struct {TYPE_1__* untracked; } ;
struct cached_dir {int fdir; struct untracked_cache_dir* untracked; } ;
struct TYPE_2__ {int dir_opened; } ;


 int _ (char*) ;
 int invalidate_directory (TYPE_1__*,struct untracked_cache_dir*) ;
 int memset (struct cached_dir*,int ,int) ;
 int opendir (char const*) ;
 scalar_t__ valid_cached_dir (struct dir_struct*,struct untracked_cache_dir*,struct index_state*,struct strbuf*,int) ;
 int warning_errno (int ,char const*) ;

__attribute__((used)) static int open_cached_dir(struct cached_dir *cdir,
      struct dir_struct *dir,
      struct untracked_cache_dir *untracked,
      struct index_state *istate,
      struct strbuf *path,
      int check_only)
{
 const char *c_path;

 memset(cdir, 0, sizeof(*cdir));
 cdir->untracked = untracked;
 if (valid_cached_dir(dir, untracked, istate, path, check_only))
  return 0;
 c_path = path->len ? path->buf : ".";
 cdir->fdir = opendir(c_path);
 if (!cdir->fdir)
  warning_errno(_("could not open directory '%s'"), c_path);
 if (dir->untracked) {
  invalidate_directory(dir->untracked, untracked);
  dir->untracked->dir_opened++;
 }
 if (!cdir->fdir)
  return -1;
 return 0;
}
