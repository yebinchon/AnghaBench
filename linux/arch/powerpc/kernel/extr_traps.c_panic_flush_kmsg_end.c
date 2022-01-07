
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLE_FLUSH_PENDING ;
 int KMSG_DUMP_PANIC ;
 int bust_spinlocks (int ) ;
 int console_flush_on_panic (int ) ;
 int debug_locks_off () ;
 int kmsg_dump (int ) ;
 int printk_safe_flush_on_panic () ;

extern void panic_flush_kmsg_end(void)
{
 printk_safe_flush_on_panic();
 kmsg_dump(KMSG_DUMP_PANIC);
 bust_spinlocks(0);
 debug_locks_off();
 console_flush_on_panic(CONSOLE_FLUSH_PENDING);
}
