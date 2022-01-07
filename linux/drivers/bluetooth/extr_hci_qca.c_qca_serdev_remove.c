
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct qca_serdev {int serdev_hu; int susclk; int btsoc_type; } ;


 int clk_disable_unprepare (int ) ;
 int hci_uart_unregister_device (int *) ;
 scalar_t__ qca_is_wcn399x (int ) ;
 int qca_power_shutdown (int *) ;
 struct qca_serdev* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void qca_serdev_remove(struct serdev_device *serdev)
{
 struct qca_serdev *qcadev = serdev_device_get_drvdata(serdev);

 if (qca_is_wcn399x(qcadev->btsoc_type))
  qca_power_shutdown(&qcadev->serdev_hu);
 else
  clk_disable_unprepare(qcadev->susclk);

 hci_uart_unregister_device(&qcadev->serdev_hu);
}
