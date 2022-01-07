
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_IPI_DM_INT ;
 int IA64_MCA_WAKEUP_VECTOR ;
 int ia64_send_ipi (int,int ,int ,int ) ;

__attribute__((used)) static void
ia64_mca_wakeup(int cpu)
{
 ia64_send_ipi(cpu, IA64_MCA_WAKEUP_VECTOR, IA64_IPI_DM_INT, 0);
}
