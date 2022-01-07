
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hard_irq_disable () ;
 int spin_begin () ;
 int spin_cpu_relax () ;

__attribute__((used)) static void stop_this_cpu(void *dummy)
{
 hard_irq_disable();
 spin_begin();
 while (1)
  spin_cpu_relax();
}
