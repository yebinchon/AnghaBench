
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct line* driver_data; } ;
struct line {scalar_t__ head; scalar_t__ tail; int lock; TYPE_1__* driver; int chan_out; } ;
struct TYPE_2__ {int write_irq; } ;


 int buffer_data (struct line*,unsigned char const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_chan (int ,unsigned char const*,int,int ) ;

int line_write(struct tty_struct *tty, const unsigned char *buf, int len)
{
 struct line *line = tty->driver_data;
 unsigned long flags;
 int n, ret = 0;

 spin_lock_irqsave(&line->lock, flags);
 if (line->head != line->tail)
  ret = buffer_data(line, buf, len);
 else {
  n = write_chan(line->chan_out, buf, len,
          line->driver->write_irq);
  if (n < 0) {
   ret = n;
   goto out_up;
  }

  len -= n;
  ret += n;
  if (len > 0)
   ret += buffer_data(line, buf + n, len);
 }
out_up:
 spin_unlock_irqrestore(&line->lock, flags);
 return ret;
}
