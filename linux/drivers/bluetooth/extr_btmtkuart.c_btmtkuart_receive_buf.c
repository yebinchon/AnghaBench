
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct serdev_device {int dummy; } ;
struct btmtkuart_dev {TYPE_2__* hdev; } ;
struct TYPE_3__ {size_t byte_rx; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;


 int btmtkuart_recv (TYPE_2__*,int const*,size_t) ;
 struct btmtkuart_dev* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static int btmtkuart_receive_buf(struct serdev_device *serdev, const u8 *data,
     size_t count)
{
 struct btmtkuart_dev *bdev = serdev_device_get_drvdata(serdev);
 int err;

 err = btmtkuart_recv(bdev->hdev, data, count);
 if (err < 0)
  return err;

 bdev->hdev->stat.byte_rx += count;

 return count;
}
