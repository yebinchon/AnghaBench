
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_CALL_A_IRQ ;
 int CPU_RESCHED_A_IRQ ;
 int LOCAL_HUB_CLR_INTR (int) ;
 int LOCAL_HUB_L (int ) ;
 int LOCAL_HUB_S (int ,unsigned long) ;
 int PI_CPU_NUM ;
 int PI_INT_MASK0_A ;
 int PI_INT_MASK0_B ;
 int PI_INT_MASK1_A ;
 int PI_INT_MASK1_B ;
 int irq_enable_mask ;
 unsigned long* per_cpu (int ,int) ;
 int set_bit (int,unsigned long*) ;
 int smp_processor_id () ;

void install_ipi(void)
{
 int cpu = smp_processor_id();
 unsigned long *mask = per_cpu(irq_enable_mask, cpu);
 int slice = LOCAL_HUB_L(PI_CPU_NUM);
 int resched, call;

 resched = CPU_RESCHED_A_IRQ + slice;
 set_bit(resched, mask);
 LOCAL_HUB_CLR_INTR(resched);

 call = CPU_CALL_A_IRQ + slice;
 set_bit(call, mask);
 LOCAL_HUB_CLR_INTR(call);

 if (slice == 0) {
  LOCAL_HUB_S(PI_INT_MASK0_A, mask[0]);
  LOCAL_HUB_S(PI_INT_MASK1_A, mask[1]);
 } else {
  LOCAL_HUB_S(PI_INT_MASK0_B, mask[0]);
  LOCAL_HUB_S(PI_INT_MASK1_B, mask[1]);
 }
}
