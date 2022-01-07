
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*,char*,void*) ;
 int touch_nmi_watchdog () ;

__attribute__((used)) static void printk_stack_address(unsigned long address, int reliable,
     char *log_lvl)
{
 touch_nmi_watchdog();
 printk("%s %s%pB\n", log_lvl, reliable ? "" : "? ", (void *)address);
}
