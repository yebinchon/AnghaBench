
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int * plr; } ;


 int kfree (int *) ;
 int pseudo_lock_region_clear (int *) ;

__attribute__((used)) static void pseudo_lock_free(struct rdtgroup *rdtgrp)
{
 pseudo_lock_region_clear(rdtgrp->plr);
 kfree(rdtgrp->plr);
 rdtgrp->plr = ((void*)0);
}
