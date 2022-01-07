
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int dummy; } ;


 int h5_complete_rx_pkt (struct hci_uart*) ;

__attribute__((used)) static int h5_rx_crc(struct hci_uart *hu, unsigned char c)
{
 h5_complete_rx_pkt(hu);

 return 0;
}
