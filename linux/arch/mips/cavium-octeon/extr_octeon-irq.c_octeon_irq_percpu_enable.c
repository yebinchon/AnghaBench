
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_cpu_online () ;

__attribute__((used)) static void octeon_irq_percpu_enable(void)
{
 irq_cpu_online();
}
