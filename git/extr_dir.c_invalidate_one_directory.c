
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {scalar_t__ untracked_nr; scalar_t__ valid; } ;
struct untracked_cache {int dir_invalidated; } ;



__attribute__((used)) static void invalidate_one_directory(struct untracked_cache *uc,
         struct untracked_cache_dir *ucd)
{
 uc->dir_invalidated++;
 ucd->valid = 0;
 ucd->untracked_nr = 0;
}
