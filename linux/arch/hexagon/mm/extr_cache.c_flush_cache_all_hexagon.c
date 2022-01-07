
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vmcache_dckill () ;
 int __vmcache_ickill () ;
 int __vmcache_l2kill () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;

void flush_cache_all_hexagon(void)
{
 unsigned long flags;
 local_irq_save(flags);
 __vmcache_ickill();
 __vmcache_dckill();
 __vmcache_l2kill();
 local_irq_restore(flags);
 mb();
}
