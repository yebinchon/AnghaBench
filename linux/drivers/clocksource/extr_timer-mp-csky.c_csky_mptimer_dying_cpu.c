
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int csky_mptimer_irq ;
 int disable_percpu_irq (int ) ;

__attribute__((used)) static int csky_mptimer_dying_cpu(unsigned int cpu)
{
 disable_percpu_irq(csky_mptimer_irq);

 return 0;
}
