
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_priority ) (int ) ;} ;


 int LOWEST_PRIORITY ;
 TYPE_1__* icp_ops ;
 int stub1 (int ) ;
 int xics_default_distrib_server ;
 int xics_set_cpu_giq (int ,int) ;

void xics_setup_cpu(void)
{
 icp_ops->set_priority(LOWEST_PRIORITY);

 xics_set_cpu_giq(xics_default_distrib_server, 1);
}
