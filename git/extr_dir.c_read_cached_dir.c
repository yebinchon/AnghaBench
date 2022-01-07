
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {size_t dirs_nr; scalar_t__ untracked_nr; int * untracked; int recurse; struct untracked_cache_dir** dirs; } ;
struct cached_dir {size_t nr_dirs; scalar_t__ nr_files; int file; struct untracked_cache_dir* untracked; struct untracked_cache_dir* ucd; int de; scalar_t__ fdir; } ;


 int readdir (scalar_t__) ;

__attribute__((used)) static int read_cached_dir(struct cached_dir *cdir)
{
 if (cdir->fdir) {
  cdir->de = readdir(cdir->fdir);
  if (!cdir->de)
   return -1;
  return 0;
 }
 while (cdir->nr_dirs < cdir->untracked->dirs_nr) {
  struct untracked_cache_dir *d = cdir->untracked->dirs[cdir->nr_dirs];
  if (!d->recurse) {
   cdir->nr_dirs++;
   continue;
  }
  cdir->ucd = d;
  cdir->nr_dirs++;
  return 0;
 }
 cdir->ucd = ((void*)0);
 if (cdir->nr_files < cdir->untracked->untracked_nr) {
  struct untracked_cache_dir *d = cdir->untracked;
  cdir->file = d->untracked[cdir->nr_files++];
  return 0;
 }
 return -1;
}
