
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serdev_device {int dev; } ;
struct TYPE_2__ {struct serdev_device* serdev; } ;
struct mrvl_serdev {TYPE_1__ hu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mrvl_serdev* devm_kzalloc (int *,int,int ) ;
 int hci_uart_register_device (TYPE_1__*,int *) ;
 int mrvl_proto ;
 int serdev_device_set_drvdata (struct serdev_device*,struct mrvl_serdev*) ;

__attribute__((used)) static int mrvl_serdev_probe(struct serdev_device *serdev)
{
 struct mrvl_serdev *mrvldev;

 mrvldev = devm_kzalloc(&serdev->dev, sizeof(*mrvldev), GFP_KERNEL);
 if (!mrvldev)
  return -ENOMEM;

 mrvldev->hu.serdev = serdev;
 serdev_device_set_drvdata(serdev, mrvldev);

 return hci_uart_register_device(&mrvldev->hu, &mrvl_proto);
}
