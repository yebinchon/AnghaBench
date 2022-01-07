
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pseudo_lock_region {int * debugfs_dir; scalar_t__ cbm; TYPE_1__* d; int * r; int * kmem; scalar_t__ line_size; scalar_t__ size; } ;
struct TYPE_2__ {int * plr; } ;


 int kfree (int *) ;

__attribute__((used)) static void pseudo_lock_region_clear(struct pseudo_lock_region *plr)
{
 plr->size = 0;
 plr->line_size = 0;
 kfree(plr->kmem);
 plr->kmem = ((void*)0);
 plr->r = ((void*)0);
 if (plr->d)
  plr->d->plr = ((void*)0);
 plr->d = ((void*)0);
 plr->cbm = 0;
 plr->debugfs_dir = ((void*)0);
}
