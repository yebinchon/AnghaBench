
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int IA64_CMCP_VECTOR ;
 int IA64_IPI_DM_INT ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int ia64_send_ipi (int ,int ,int ,int ) ;

__attribute__((used)) static void
ia64_mca_cmc_poll (struct timer_list *unused)
{

 ia64_send_ipi(cpumask_first(cpu_online_mask), IA64_CMCP_VECTOR,
       IA64_IPI_DM_INT, 0);
}
