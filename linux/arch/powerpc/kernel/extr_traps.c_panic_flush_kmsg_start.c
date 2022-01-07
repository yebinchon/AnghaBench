
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bust_spinlocks (int) ;
 int console_verbose () ;

extern void panic_flush_kmsg_start(void)
{







 console_verbose();
 bust_spinlocks(1);
}
