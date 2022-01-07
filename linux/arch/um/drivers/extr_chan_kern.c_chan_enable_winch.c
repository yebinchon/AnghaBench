
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct chan {int fd; TYPE_1__* ops; scalar_t__ primary; } ;
struct TYPE_2__ {scalar_t__ winch; } ;


 int register_winch (int ,struct tty_port*) ;

void chan_enable_winch(struct chan *chan, struct tty_port *port)
{
 if (chan && chan->primary && chan->ops->winch)
  register_winch(chan->fd, port);
}
