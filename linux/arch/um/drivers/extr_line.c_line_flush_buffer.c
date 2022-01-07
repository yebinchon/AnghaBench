
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct line* driver_data; } ;
struct line {int lock; } ;


 int flush_buffer (struct line*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void line_flush_buffer(struct tty_struct *tty)
{
 struct line *line = tty->driver_data;
 unsigned long flags;

 spin_lock_irqsave(&line->lock, flags);
 flush_buffer(line);
 spin_unlock_irqrestore(&line->lock, flags);
}
