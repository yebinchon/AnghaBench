
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rmid; } ;
struct rdtgroup {TYPE_1__ mon; int kn; } ;


 int free_rmid (int ) ;
 int kernfs_remove (int ) ;
 int kfree (struct rdtgroup*) ;

__attribute__((used)) static void mkdir_rdt_prepare_clean(struct rdtgroup *rgrp)
{
 kernfs_remove(rgrp->kn);
 free_rmid(rgrp->mon.rmid);
 kfree(rgrp);
}
