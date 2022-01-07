
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct cm4000_dev* priv; } ;
struct cm4000_dev {int dummy; } ;


 int start_monitor (struct cm4000_dev*) ;

__attribute__((used)) static int cm4000_resume(struct pcmcia_device *link)
{
 struct cm4000_dev *dev;

 dev = link->priv;
 if (link->open)
  start_monitor(dev);

 return 0;
}
