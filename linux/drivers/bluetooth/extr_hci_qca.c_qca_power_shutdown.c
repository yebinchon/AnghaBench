
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int hci_ibs_lock; int flags; } ;
struct hci_uart {struct qca_data* priv; } ;


 int QCA_IBS_ENABLED ;
 int clear_bit (int ,int *) ;
 int host_set_baudrate (struct hci_uart*,int) ;
 int qca_flush (struct hci_uart*) ;
 int qca_power_setup (struct hci_uart*,int) ;
 int qca_send_power_pulse (struct hci_uart*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qca_power_shutdown(struct hci_uart *hu)
{
 struct qca_data *qca = hu->priv;
 unsigned long flags;





 spin_lock_irqsave(&qca->hci_ibs_lock, flags);
 clear_bit(QCA_IBS_ENABLED, &qca->flags);
 qca_flush(hu);
 spin_unlock_irqrestore(&qca->hci_ibs_lock, flags);

 host_set_baudrate(hu, 2400);
 qca_send_power_pulse(hu, 0);
 qca_power_setup(hu, 0);
}
