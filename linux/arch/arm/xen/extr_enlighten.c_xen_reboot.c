
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_shutdown {int reason; } ;


 int BUG_ON (int) ;
 int HYPERVISOR_sched_op (int ,struct sched_shutdown*) ;
 int SCHEDOP_shutdown ;

void xen_reboot(int reason)
{
 struct sched_shutdown r = { .reason = reason };
 int rc;

 rc = HYPERVISOR_sched_op(SCHEDOP_shutdown, &r);
 BUG_ON(rc);
}
