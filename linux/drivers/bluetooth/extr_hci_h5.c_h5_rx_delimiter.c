
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct h5* priv; } ;
struct h5 {int rx_func; } ;


 unsigned char SLIP_DELIMITER ;
 int h5_rx_pkt_start ;

__attribute__((used)) static int h5_rx_delimiter(struct hci_uart *hu, unsigned char c)
{
 struct h5 *h5 = hu->priv;

 if (c == SLIP_DELIMITER)
  h5->rx_func = h5_rx_pkt_start;

 return 1;
}
