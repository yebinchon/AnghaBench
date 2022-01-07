
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int dummy; } ;
struct untracked_cache {int gitignore_invalidated; } ;


 int do_invalidate_gitignore (struct untracked_cache_dir*) ;

__attribute__((used)) static void invalidate_gitignore(struct untracked_cache *uc,
     struct untracked_cache_dir *dir)
{
 uc->gitignore_invalidated++;
 do_invalidate_gitignore(dir);
}
