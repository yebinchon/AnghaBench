
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scr24x_dev {int refcnt; int lock; int * dev; int devno; int c_dev; } ;
struct pcmcia_device {scalar_t__ priv; } ;


 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int cdev_del (int *) ;
 int clear_bit (int ,int ) ;
 int device_destroy (int ,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int scr24x_class ;
 int scr24x_delete ;
 int scr24x_devt ;
 int scr24x_minors ;

__attribute__((used)) static void scr24x_remove(struct pcmcia_device *link)
{
 struct scr24x_dev *dev = (struct scr24x_dev *)link->priv;

 device_destroy(scr24x_class, MKDEV(MAJOR(scr24x_devt), dev->devno));
 mutex_lock(&dev->lock);
 pcmcia_disable_device(link);
 cdev_del(&dev->c_dev);
 clear_bit(dev->devno, scr24x_minors);
 dev->dev = ((void*)0);
 mutex_unlock(&dev->lock);

 kref_put(&dev->refcnt, scr24x_delete);
}
