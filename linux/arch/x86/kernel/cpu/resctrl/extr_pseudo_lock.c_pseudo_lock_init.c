
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {int pm_reqs; int lock_thread_wq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct pseudo_lock_region* kzalloc (int,int ) ;

__attribute__((used)) static int pseudo_lock_init(struct rdtgroup *rdtgrp)
{
 struct pseudo_lock_region *plr;

 plr = kzalloc(sizeof(*plr), GFP_KERNEL);
 if (!plr)
  return -ENOMEM;

 init_waitqueue_head(&plr->lock_thread_wq);
 INIT_LIST_HEAD(&plr->pm_reqs);
 rdtgrp->plr = plr;
 return 0;
}
