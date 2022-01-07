
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {scalar_t__ untracked_nr; int * untracked; int untracked_alloc; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void add_untracked(struct untracked_cache_dir *dir, const char *name)
{
 if (!dir)
  return;
 ALLOC_GROW(dir->untracked, dir->untracked_nr + 1,
     dir->untracked_alloc);
 dir->untracked[dir->untracked_nr++] = xstrdup(name);
}
