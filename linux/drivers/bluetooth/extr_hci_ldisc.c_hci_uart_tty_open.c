
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; struct hci_uart* disc_data; TYPE_1__* ops; } ;
struct hci_uart {int alignment; int proto_lock; int write_work; int init_ready; scalar_t__ padding; struct tty_struct* tty; } ;
struct TYPE_2__ {int * write; } ;


 int BT_DBG (char*,struct tty_struct*) ;
 int BT_ERR (char*) ;
 int ENFILE ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int hci_uart_init_work ;
 int hci_uart_write_work ;
 struct hci_uart* kzalloc (int,int ) ;
 int percpu_init_rwsem (int *) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;

__attribute__((used)) static int hci_uart_tty_open(struct tty_struct *tty)
{
 struct hci_uart *hu;

 BT_DBG("tty %p", tty);




 if (tty->ops->write == ((void*)0))
  return -EOPNOTSUPP;

 hu = kzalloc(sizeof(struct hci_uart), GFP_KERNEL);
 if (!hu) {
  BT_ERR("Can't allocate control structure");
  return -ENFILE;
 }

 tty->disc_data = hu;
 hu->tty = tty;
 tty->receive_room = 65536;


 hu->alignment = 1;
 hu->padding = 0;

 INIT_WORK(&hu->init_ready, hci_uart_init_work);
 INIT_WORK(&hu->write_work, hci_uart_write_work);

 percpu_init_rwsem(&hu->proto_lock);


 tty_driver_flush_buffer(tty);

 return 0;
}
