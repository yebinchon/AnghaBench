
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_mbox_ipi (int,unsigned int) ;

__attribute__((used)) static void paravirt_send_ipi_single(int cpu, unsigned int action)
{
 irq_mbox_ipi(cpu, action);
}
