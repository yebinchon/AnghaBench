
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ktermios {int c_ospeed; int c_ispeed; int c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct hci_uart {TYPE_1__* hdev; struct tty_struct* tty; } ;
struct TYPE_2__ {int name; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 int CBAUD ;
 int tty_set_termios (struct tty_struct*,struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;

void hci_uart_set_baudrate(struct hci_uart *hu, unsigned int speed)
{
 struct tty_struct *tty = hu->tty;
 struct ktermios ktermios;

 ktermios = tty->termios;
 ktermios.c_cflag &= ~CBAUD;
 tty_termios_encode_baud_rate(&ktermios, speed, speed);


 tty_set_termios(tty, &ktermios);

 BT_DBG("%s: New tty speeds: %d/%d", hu->hdev->name,
        tty->termios.c_ispeed, tty->termios.c_ospeed);
}
