
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_serdev {int btsoc_type; } ;
struct hci_uart {scalar_t__ serdev; } ;
typedef enum qca_btsoc_type { ____Placeholder_qca_btsoc_type } qca_btsoc_type ;


 int QCA_ROME ;
 struct qca_serdev* serdev_device_get_drvdata (scalar_t__) ;

__attribute__((used)) static enum qca_btsoc_type qca_soc_type(struct hci_uart *hu)
{
 enum qca_btsoc_type soc_type;

 if (hu->serdev) {
  struct qca_serdev *qsd = serdev_device_get_drvdata(hu->serdev);

  soc_type = qsd->btsoc_type;
 } else {
  soc_type = QCA_ROME;
 }

 return soc_type;
}
