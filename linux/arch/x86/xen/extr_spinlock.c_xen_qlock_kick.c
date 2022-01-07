
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XEN_SPIN_UNLOCK_VECTOR ;
 int lock_kicker_irq ;
 int per_cpu (int ,int) ;
 int xen_send_IPI_one (int,int ) ;

__attribute__((used)) static void xen_qlock_kick(int cpu)
{
 int irq = per_cpu(lock_kicker_irq, cpu);


 if (irq == -1)
  return;

 xen_send_IPI_one(cpu, XEN_SPIN_UNLOCK_VECTOR);
}
