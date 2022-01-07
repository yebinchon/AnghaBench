
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct serdev_device {int dummy; } ;
struct hci_uart {TYPE_3__* hdev; TYPE_2__* proto; int flags; struct serdev_device* serdev; } ;
struct TYPE_4__ {size_t byte_rx; } ;
struct TYPE_6__ {TYPE_1__ stat; } ;
struct TYPE_5__ {int (* recv ) (struct hci_uart*,int const*,size_t) ;} ;


 int HCI_UART_PROTO_READY ;
 int WARN_ON (int) ;
 struct hci_uart* serdev_device_get_drvdata (struct serdev_device*) ;
 int stub1 (struct hci_uart*,int const*,size_t) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_receive_buf(struct serdev_device *serdev, const u8 *data,
       size_t count)
{
 struct hci_uart *hu = serdev_device_get_drvdata(serdev);

 if (!hu || serdev != hu->serdev) {
  WARN_ON(1);
  return 0;
 }

 if (!test_bit(HCI_UART_PROTO_READY, &hu->flags))
  return 0;




 hu->proto->recv(hu, data, count);

 if (hu->hdev)
  hu->hdev->stat.byte_rx += count;

 return count;
}
