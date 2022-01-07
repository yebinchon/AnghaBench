
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int port; int lock; int buffer; int tail; int head; } ;
struct chan {struct line* line; } ;
typedef int irqreturn_t ;


 int EAGAIN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int flush_buffer (struct line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_port_tty_wakeup (int *) ;

__attribute__((used)) static irqreturn_t line_write_interrupt(int irq, void *data)
{
 struct chan *chan = data;
 struct line *line = chan->line;
 int err;






 spin_lock(&line->lock);
 err = flush_buffer(line);
 if (err == 0) {
  spin_unlock(&line->lock);
  return IRQ_NONE;
 } else if ((err < 0) && (err != -EAGAIN)) {
  line->head = line->buffer;
  line->tail = line->buffer;
 }
 spin_unlock(&line->lock);

 tty_port_tty_wakeup(&line->port);

 return IRQ_HANDLED;
}
