
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int back_to_cached () ;
 int cache_wback_all () ;
 int jump_to_uncached () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void sh7705_flush_cache_all(void *args)
{
 unsigned long flags;

 local_irq_save(flags);
 jump_to_uncached();

 cache_wback_all();
 back_to_cached();
 local_irq_restore(flags);
}
