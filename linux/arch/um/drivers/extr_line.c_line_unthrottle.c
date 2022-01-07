
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct line* driver_data; } ;
struct line {TYPE_1__* driver; scalar_t__ throttled; } ;
struct TYPE_2__ {int read_irq; } ;


 int chan_interrupt (struct line*,int ) ;

void line_unthrottle(struct tty_struct *tty)
{
 struct line *line = tty->driver_data;

 line->throttled = 0;
 chan_interrupt(line, line->driver->read_irq);
}
