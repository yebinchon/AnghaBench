
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chan {scalar_t__ primary; int data; int fd; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (int ,char const*,int,int ) ;} ;


 int stub1 (int ,char const*,int,int ) ;

int write_chan(struct chan *chan, const char *buf, int len,
        int write_irq)
{
 int n, ret = 0;

 if (len == 0 || !chan || !chan->ops->write)
  return 0;

 n = chan->ops->write(chan->fd, buf, len, chan->data);
 if (chan->primary) {
  ret = n;
 }
 return ret;
}
