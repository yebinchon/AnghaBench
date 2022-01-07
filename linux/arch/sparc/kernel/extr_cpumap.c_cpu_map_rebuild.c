
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _cpu_map_rebuild () ;
 int cpu_map_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cpu_map_rebuild(void)
{
 unsigned long flag;

 spin_lock_irqsave(&cpu_map_lock, flag);
 _cpu_map_rebuild();
 spin_unlock_irqrestore(&cpu_map_lock, flag);
}
