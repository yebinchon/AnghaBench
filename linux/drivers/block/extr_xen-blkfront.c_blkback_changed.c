
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int state; int dev; } ;
struct blkfront_info {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
 int blkfront_closing (struct blkfront_info*) ;
 int blkfront_connect (struct blkfront_info*) ;
 int dev_dbg (int *,char*,int) ;
 struct blkfront_info* dev_get_drvdata (int *) ;
 int talk_to_blkback (struct xenbus_device*,struct blkfront_info*) ;

__attribute__((used)) static void blkback_changed(struct xenbus_device *dev,
       enum xenbus_state backend_state)
{
 struct blkfront_info *info = dev_get_drvdata(&dev->dev);

 dev_dbg(&dev->dev, "blkfront:blkback_changed to state %d.\n", backend_state);

 switch (backend_state) {
 case 133:
  if (dev->state != 131)
   break;
  if (talk_to_blkback(dev, info))
   break;
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
  break;

 case 134:
  if ((dev->state != 132) &&
      (dev->state != 134)) {
   if (talk_to_blkback(dev, info))
    break;
  }

  blkfront_connect(info);
  break;

 case 136:
  if (dev->state == 136)
   break;

 case 135:
  if (info)
   blkfront_closing(info);
  break;
 }
}
