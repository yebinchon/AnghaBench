
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int dirs_nr; struct untracked_cache_dir** dirs; scalar_t__ untracked_nr; scalar_t__ valid; } ;



__attribute__((used)) static void do_invalidate_gitignore(struct untracked_cache_dir *dir)
{
 int i;
 dir->valid = 0;
 dir->untracked_nr = 0;
 for (i = 0; i < dir->dirs_nr; i++)
  do_invalidate_gitignore(dir->dirs[i]);
}
