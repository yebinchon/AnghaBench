
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chan {scalar_t__ primary; int fd; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* console_write ) (int ,char const*,int) ;} ;


 int stub1 (int ,char const*,int) ;

int console_write_chan(struct chan *chan, const char *buf, int len)
{
 int n, ret = 0;

 if (!chan || !chan->ops->console_write)
  return 0;

 n = chan->ops->console_write(chan->fd, buf, len);
 if (chan->primary)
  ret = n;
 return ret;
}
