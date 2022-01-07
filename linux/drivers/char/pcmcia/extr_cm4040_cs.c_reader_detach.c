
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_dev {int dummy; } ;
struct pcmcia_device {struct reader_dev* priv; } ;


 int CM_MAX_DEV ;
 int MKDEV (int ,int) ;
 int cmx_class ;
 struct pcmcia_device** dev_table ;
 int device_destroy (int ,int ) ;
 int kfree (struct reader_dev*) ;
 int major ;
 int reader_release (struct pcmcia_device*) ;

__attribute__((used)) static void reader_detach(struct pcmcia_device *link)
{
 struct reader_dev *dev = link->priv;
 int devno;


 for (devno = 0; devno < CM_MAX_DEV; devno++) {
  if (dev_table[devno] == link)
   break;
 }
 if (devno == CM_MAX_DEV)
  return;

 reader_release(link);

 dev_table[devno] = ((void*)0);
 kfree(dev);

 device_destroy(cmx_class, MKDEV(major, devno));

 return;
}
