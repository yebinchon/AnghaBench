
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rmid; } ;
struct rdtgroup {TYPE_1__ mon; } ;


 int alloc_rmid () ;
 int free_rmid (int) ;
 int pseudo_lock_free (struct rdtgroup*) ;
 int rdt_last_cmd_puts (char*) ;
 scalar_t__ rdt_mon_capable ;
 int rdtgroup_locksetup_user_restore (struct rdtgroup*) ;

int rdtgroup_locksetup_exit(struct rdtgroup *rdtgrp)
{
 int ret;

 if (rdt_mon_capable) {
  ret = alloc_rmid();
  if (ret < 0) {
   rdt_last_cmd_puts("Out of RMIDs\n");
   return ret;
  }
  rdtgrp->mon.rmid = ret;
 }

 ret = rdtgroup_locksetup_user_restore(rdtgrp);
 if (ret) {
  free_rmid(rdtgrp->mon.rmid);
  return ret;
 }

 pseudo_lock_free(rdtgrp);
 return 0;
}
