
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int pdc_console_lock ;
 int pdc_iodc_getc () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pdc_console_poll_key(struct console *co)
{
 int c;
 unsigned long flags;

 spin_lock_irqsave(&pdc_console_lock, flags);
 c = pdc_iodc_getc();
 spin_unlock_irqrestore(&pdc_console_lock, flags);

 return c;
}
