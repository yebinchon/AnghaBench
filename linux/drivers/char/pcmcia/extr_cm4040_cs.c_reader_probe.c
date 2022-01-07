
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_dev {int poll_timer; int write_wait; int read_wait; int poll_wait; int devq; struct pcmcia_device* p_dev; scalar_t__ buffer_status; int timeout; } ;
struct pcmcia_device {struct reader_dev* priv; } ;


 int CCID_DRIVER_MINIMUM_TIMEOUT ;
 int CM_MAX_DEV ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MKDEV (int ,int) ;
 int cm4040_do_poll ;
 int cmx_class ;
 struct pcmcia_device** dev_table ;
 int device_create (int ,int *,int ,int *,char*,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct reader_dev*) ;
 struct reader_dev* kzalloc (int,int ) ;
 int major ;
 int reader_config (struct pcmcia_device*,int) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int reader_probe(struct pcmcia_device *link)
{
 struct reader_dev *dev;
 int i, ret;

 for (i = 0; i < CM_MAX_DEV; i++) {
  if (dev_table[i] == ((void*)0))
   break;
 }

 if (i == CM_MAX_DEV)
  return -ENODEV;

 dev = kzalloc(sizeof(struct reader_dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;

 dev->timeout = CCID_DRIVER_MINIMUM_TIMEOUT;
 dev->buffer_status = 0;

 link->priv = dev;
 dev->p_dev = link;

 dev_table[i] = link;

 init_waitqueue_head(&dev->devq);
 init_waitqueue_head(&dev->poll_wait);
 init_waitqueue_head(&dev->read_wait);
 init_waitqueue_head(&dev->write_wait);
 timer_setup(&dev->poll_timer, cm4040_do_poll, 0);

 ret = reader_config(link, i);
 if (ret) {
  dev_table[i] = ((void*)0);
  kfree(dev);
  return ret;
 }

 device_create(cmx_class, ((void*)0), MKDEV(major, i), ((void*)0), "cmx%d", i);

 return 0;
}
