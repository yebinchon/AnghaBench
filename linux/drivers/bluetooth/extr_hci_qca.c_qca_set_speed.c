
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int flags; int drop_ev_comp; } ;
struct hci_uart {int hdev; struct qca_data* priv; } ;
typedef enum qca_speed_type { ____Placeholder_qca_speed_type } qca_speed_type ;
typedef enum qca_btsoc_type { ____Placeholder_qca_btsoc_type } qca_btsoc_type ;


 int ETIMEDOUT ;
 int QCA_DROP_VENDOR_EVENT ;
 int QCA_INIT_SPEED ;
 int QCA_OPER_SPEED ;
 int QCA_WCN3990 ;
 int bt_dev_dbg (int ,char*,unsigned int) ;
 int bt_dev_err (int ,char*) ;
 int clear_bit (int ,int *) ;
 int hci_uart_set_flow_control (struct hci_uart*,int) ;
 int host_set_baudrate (struct hci_uart*,unsigned int) ;
 int msecs_to_jiffies (int) ;
 unsigned int qca_get_baudrate_value (unsigned int) ;
 unsigned int qca_get_speed (struct hci_uart*,int) ;
 scalar_t__ qca_is_wcn399x (int) ;
 int qca_set_baudrate (int ,unsigned int) ;
 int qca_soc_type (struct hci_uart*) ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
{
 unsigned int speed, qca_baudrate;
 struct qca_data *qca = hu->priv;
 int ret = 0;

 if (speed_type == QCA_INIT_SPEED) {
  speed = qca_get_speed(hu, QCA_INIT_SPEED);
  if (speed)
   host_set_baudrate(hu, speed);
 } else {
  enum qca_btsoc_type soc_type = qca_soc_type(hu);

  speed = qca_get_speed(hu, QCA_OPER_SPEED);
  if (!speed)
   return 0;




  if (qca_is_wcn399x(soc_type))
   hci_uart_set_flow_control(hu, 1);

  if (soc_type == QCA_WCN3990) {
   reinit_completion(&qca->drop_ev_comp);
   set_bit(QCA_DROP_VENDOR_EVENT, &qca->flags);
  }

  qca_baudrate = qca_get_baudrate_value(speed);
  bt_dev_dbg(hu->hdev, "Set UART speed to %d", speed);
  ret = qca_set_baudrate(hu->hdev, qca_baudrate);
  if (ret)
   goto error;

  host_set_baudrate(hu, speed);

error:
  if (qca_is_wcn399x(soc_type))
   hci_uart_set_flow_control(hu, 0);

  if (soc_type == QCA_WCN3990) {



   if (!wait_for_completion_timeout(&qca->drop_ev_comp,
       msecs_to_jiffies(100))) {
    bt_dev_err(hu->hdev,
        "Failed to change controller baudrate\n");
    ret = -ETIMEDOUT;
   }

   clear_bit(QCA_DROP_VENDOR_EVENT, &qca->flags);
  }
 }

 return ret;
}
