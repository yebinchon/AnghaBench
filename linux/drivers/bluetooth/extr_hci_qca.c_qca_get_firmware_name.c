
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_serdev {char const* firmware_name; } ;
struct hci_uart {scalar_t__ serdev; } ;


 struct qca_serdev* serdev_device_get_drvdata (scalar_t__) ;

__attribute__((used)) static const char *qca_get_firmware_name(struct hci_uart *hu)
{
 if (hu->serdev) {
  struct qca_serdev *qsd = serdev_device_get_drvdata(hu->serdev);

  return qsd->firmware_name;
 } else {
  return ((void*)0);
 }
}
