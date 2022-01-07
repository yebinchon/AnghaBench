
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chan {int fd; scalar_t__ enabled; } ;


 int deactivate_fd (int ,int) ;

void deactivate_chan(struct chan *chan, int irq)
{
 if (chan && chan->enabled)
  deactivate_fd(chan->fd, irq);
}
