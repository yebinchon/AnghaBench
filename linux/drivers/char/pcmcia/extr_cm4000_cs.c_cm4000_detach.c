
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct cm4000_dev* priv; } ;
struct cm4000_dev {int dummy; } ;


 int CM4000_MAX_DEV ;
 int MKDEV (int ,int) ;
 int cm4000_release (struct pcmcia_device*) ;
 int cmm_class ;
 struct pcmcia_device** dev_table ;
 int device_destroy (int ,int ) ;
 int kfree (struct cm4000_dev*) ;
 int major ;
 int stop_monitor (struct cm4000_dev*) ;

__attribute__((used)) static void cm4000_detach(struct pcmcia_device *link)
{
 struct cm4000_dev *dev = link->priv;
 int devno;


 for (devno = 0; devno < CM4000_MAX_DEV; devno++)
  if (dev_table[devno] == link)
   break;
 if (devno == CM4000_MAX_DEV)
  return;

 stop_monitor(dev);

 cm4000_release(link);

 dev_table[devno] = ((void*)0);
 kfree(dev);

 device_destroy(cmm_class, MKDEV(major, devno));

 return;
}
