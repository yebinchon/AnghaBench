
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srmcons_callback_lock ;
 int srmcons_do_write (int *,char const*,unsigned int) ;

__attribute__((used)) static void
srm_console_write(struct console *co, const char *s, unsigned count)
{
 unsigned long flags;

 spin_lock_irqsave(&srmcons_callback_lock, flags);
 srmcons_do_write(((void*)0), s, count);
 spin_unlock_irqrestore(&srmcons_callback_lock, flags);
}
