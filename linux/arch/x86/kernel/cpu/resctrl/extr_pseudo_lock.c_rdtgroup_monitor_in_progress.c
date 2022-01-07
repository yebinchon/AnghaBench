
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crdtgrp_list; } ;
struct rdtgroup {TYPE_1__ mon; } ;


 int list_empty (int *) ;

__attribute__((used)) static int rdtgroup_monitor_in_progress(struct rdtgroup *rdtgrp)
{
 return !list_empty(&rdtgrp->mon.crdtgrp_list);
}
