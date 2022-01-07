
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*) ;

void irq_install_pre_handler(int irq,
        void (*func)(unsigned int, void *, void *),
        void *arg1, void *arg2)
{
 pr_warn("IRQ pre handler NOT supported.\n");
}
