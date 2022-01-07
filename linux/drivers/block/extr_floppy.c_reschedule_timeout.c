
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __reschedule_timeout (int,char const*) ;
 int floppy_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void reschedule_timeout(int drive, const char *message)
{
 unsigned long flags;

 spin_lock_irqsave(&floppy_lock, flags);
 __reschedule_timeout(drive, message);
 spin_unlock_irqrestore(&floppy_lock, flags);
}
