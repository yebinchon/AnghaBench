
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush_ipi ) () ;} ;


 TYPE_1__* icp_ops ;
 int stub1 () ;
 int xics_default_distrib_server ;
 int xics_set_cpu_giq (int ,int ) ;
 int xics_teardown_cpu () ;

void xics_kexec_teardown_cpu(int secondary)
{
 xics_teardown_cpu();

 icp_ops->flush_ipi();





 if (secondary)
  xics_set_cpu_giq(xics_default_distrib_server, 0);
}
