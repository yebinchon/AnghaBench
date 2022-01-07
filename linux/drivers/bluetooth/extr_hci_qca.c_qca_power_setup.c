
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_bulk_data {int consumer; } ;
struct qca_vreg {int name; } ;
struct qca_serdev {TYPE_2__* bt_power; } ;
struct hci_uart {int serdev; } ;
struct TYPE_4__ {int vregs_on; TYPE_1__* vreg_data; struct regulator_bulk_data* vreg_bulk; } ;
struct TYPE_3__ {int num_vregs; struct qca_vreg* vregs; } ;


 int BT_DBG (char*,int) ;
 int BT_ERR (char*,int ) ;
 int EINVAL ;
 int qca_disable_regulator (struct qca_vreg,int ) ;
 int qca_enable_regulator (struct qca_vreg,int ) ;
 struct qca_serdev* serdev_device_get_drvdata (int ) ;

__attribute__((used)) static int qca_power_setup(struct hci_uart *hu, bool on)
{
 struct qca_vreg *vregs;
 struct regulator_bulk_data *vreg_bulk;
 struct qca_serdev *qcadev;
 int i, num_vregs, ret = 0;

 qcadev = serdev_device_get_drvdata(hu->serdev);
 if (!qcadev || !qcadev->bt_power || !qcadev->bt_power->vreg_data ||
     !qcadev->bt_power->vreg_bulk)
  return -EINVAL;

 vregs = qcadev->bt_power->vreg_data->vregs;
 vreg_bulk = qcadev->bt_power->vreg_bulk;
 num_vregs = qcadev->bt_power->vreg_data->num_vregs;
 BT_DBG("on: %d", on);
 if (on && !qcadev->bt_power->vregs_on) {
  for (i = 0; i < num_vregs; i++) {
   ret = qca_enable_regulator(vregs[i],
         vreg_bulk[i].consumer);
   if (ret)
    break;
  }

  if (ret) {
   BT_ERR("failed to enable regulator:%s", vregs[i].name);

   for (i = i - 1; i >= 0; i--)
    qca_disable_regulator(vregs[i],
            vreg_bulk[i].consumer);
  } else {
   qcadev->bt_power->vregs_on = 1;
  }
 } else if (!on && qcadev->bt_power->vregs_on) {

  i = qcadev->bt_power->vreg_data->num_vregs - 1;
  for ( ; i >= 0; i--)
   qca_disable_regulator(vregs[i], vreg_bulk[i].consumer);

  qcadev->bt_power->vregs_on = 0;
 }

 return ret;
}
