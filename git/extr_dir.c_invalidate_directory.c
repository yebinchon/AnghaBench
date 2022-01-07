
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct untracked_cache_dir {int dirs_nr; TYPE_1__** dirs; scalar_t__ untracked_nr; scalar_t__ valid; } ;
struct untracked_cache {int dir_invalidated; } ;
struct TYPE_2__ {scalar_t__ recurse; } ;



__attribute__((used)) static void invalidate_directory(struct untracked_cache *uc,
     struct untracked_cache_dir *dir)
{
 int i;







 if (dir->valid)
  uc->dir_invalidated++;

 dir->valid = 0;
 dir->untracked_nr = 0;
 for (i = 0; i < dir->dirs_nr; i++)
  dir->dirs[i]->recurse = 0;
}
