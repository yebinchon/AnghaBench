
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xics_cppr {scalar_t__ index; } ;
struct TYPE_2__ {int (* teardown_cpu ) () ;int (* set_priority ) (int ) ;} ;


 TYPE_1__* icp_ops ;
 int stub1 (int ) ;
 int stub2 () ;
 struct xics_cppr* this_cpu_ptr (int *) ;
 int xics_cppr ;

void xics_teardown_cpu(void)
{
 struct xics_cppr *os_cppr = this_cpu_ptr(&xics_cppr);





 os_cppr->index = 0;
 icp_ops->set_priority(0);
 icp_ops->teardown_cpu();
}
