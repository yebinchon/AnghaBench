
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct line* driver_data; } ;
struct line {int throttled; TYPE_1__* driver; int chan_in; } ;
struct TYPE_2__ {int read_irq; } ;


 int deactivate_chan (int ,int ) ;

void line_throttle(struct tty_struct *tty)
{
 struct line *line = tty->driver_data;

 deactivate_chan(line->chan_in, line->driver->read_irq);
 line->throttled = 1;
}
