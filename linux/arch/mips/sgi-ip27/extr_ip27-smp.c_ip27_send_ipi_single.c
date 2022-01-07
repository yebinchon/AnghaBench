
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPACT_TO_NASID_NODEID (int ) ;
 int CPU_CALL_A_IRQ ;
 int CPU_RESCHED_A_IRQ ;
 int REMOTE_HUB_SEND_INTR (int ,int) ;


 int cpu_to_node (int) ;
 scalar_t__ cputoslice (int) ;
 int panic (char*) ;

__attribute__((used)) static void ip27_send_ipi_single(int destid, unsigned int action)
{
 int irq;

 switch (action) {
 case 128:
  irq = CPU_RESCHED_A_IRQ;
  break;
 case 129:
  irq = CPU_CALL_A_IRQ;
  break;
 default:
  panic("sendintr");
 }

 irq += cputoslice(destid);






 REMOTE_HUB_SEND_INTR(COMPACT_TO_NASID_NODEID(cpu_to_node(destid)), irq);
}
