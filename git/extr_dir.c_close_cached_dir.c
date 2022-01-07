
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cached_dir {TYPE_1__* untracked; scalar_t__ fdir; } ;
struct TYPE_2__ {int valid; int recurse; } ;


 int closedir (scalar_t__) ;

__attribute__((used)) static void close_cached_dir(struct cached_dir *cdir)
{
 if (cdir->fdir)
  closedir(cdir->fdir);




 if (cdir->untracked) {
  cdir->untracked->valid = 1;
  cdir->untracked->recurse = 1;
 }
}
