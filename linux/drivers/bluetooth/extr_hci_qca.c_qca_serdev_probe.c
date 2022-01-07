
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serdev_device {int dev; } ;
struct qca_vreg_data {int num_vregs; int vregs; int soc_type; } ;
struct TYPE_4__ {struct serdev_device* serdev; } ;
struct qca_serdev {int susclk; TYPE_2__ serdev_hu; int bt_en; int btsoc_type; int oper_speed; TYPE_1__* bt_power; int firmware_name; } ;
struct qca_power {int dummy; } ;
struct TYPE_3__ {int vregs_on; struct qca_vreg_data const* vreg_data; int * dev; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int QCA_ROME ;
 int SUSCLK_RATE_32KHZ ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int *,char*) ;
 int device_property_read_string (int *,char*,int *) ;
 int device_property_read_u32 (int *,char*,int *) ;
 int devm_clk_get (int *,int *) ;
 int devm_gpiod_get (int *,char*,int ) ;
 void* devm_kzalloc (int *,int,int ) ;
 int hci_uart_register_device (TYPE_2__*,int *) ;
 struct qca_vreg_data* of_device_get_match_data (int *) ;
 int qca_init_regulators (TYPE_1__*,int ,int ) ;
 scalar_t__ qca_is_wcn399x (int ) ;
 int qca_proto ;
 int serdev_device_set_drvdata (struct serdev_device*,struct qca_serdev*) ;

__attribute__((used)) static int qca_serdev_probe(struct serdev_device *serdev)
{
 struct qca_serdev *qcadev;
 const struct qca_vreg_data *data;
 int err;

 qcadev = devm_kzalloc(&serdev->dev, sizeof(*qcadev), GFP_KERNEL);
 if (!qcadev)
  return -ENOMEM;

 qcadev->serdev_hu.serdev = serdev;
 data = of_device_get_match_data(&serdev->dev);
 serdev_device_set_drvdata(serdev, qcadev);
 device_property_read_string(&serdev->dev, "firmware-name",
      &qcadev->firmware_name);
 if (data && qca_is_wcn399x(data->soc_type)) {
  qcadev->btsoc_type = data->soc_type;
  qcadev->bt_power = devm_kzalloc(&serdev->dev,
      sizeof(struct qca_power),
      GFP_KERNEL);
  if (!qcadev->bt_power)
   return -ENOMEM;

  qcadev->bt_power->dev = &serdev->dev;
  qcadev->bt_power->vreg_data = data;
  err = qca_init_regulators(qcadev->bt_power, data->vregs,
       data->num_vregs);
  if (err) {
   BT_ERR("Failed to init regulators:%d", err);
   goto out;
  }

  qcadev->bt_power->vregs_on = 0;

  device_property_read_u32(&serdev->dev, "max-speed",
      &qcadev->oper_speed);
  if (!qcadev->oper_speed)
   BT_DBG("UART will pick default operating speed");

  err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
  if (err) {
   BT_ERR("wcn3990 serdev registration failed");
   goto out;
  }
 } else {
  qcadev->btsoc_type = QCA_ROME;
  qcadev->bt_en = devm_gpiod_get(&serdev->dev, "enable",
            GPIOD_OUT_LOW);
  if (IS_ERR(qcadev->bt_en)) {
   dev_err(&serdev->dev, "failed to acquire enable gpio\n");
   return PTR_ERR(qcadev->bt_en);
  }

  qcadev->susclk = devm_clk_get(&serdev->dev, ((void*)0));
  if (IS_ERR(qcadev->susclk)) {
   dev_err(&serdev->dev, "failed to acquire clk\n");
   return PTR_ERR(qcadev->susclk);
  }

  err = clk_set_rate(qcadev->susclk, SUSCLK_RATE_32KHZ);
  if (err)
   return err;

  err = clk_prepare_enable(qcadev->susclk);
  if (err)
   return err;

  err = hci_uart_register_device(&qcadev->serdev_hu, &qca_proto);
  if (err)
   clk_disable_unprepare(qcadev->susclk);
 }

out: return err;

}
