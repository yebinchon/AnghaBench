
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct h5 {int rx_pending; int rx_skb; int flags; } ;


 int BT_DBG (char*,unsigned char const,int ) ;
 int BT_ERR (char*,unsigned char) ;
 int H5_RX_ESC ;
 unsigned char SLIP_DELIMITER ;
 unsigned char SLIP_ESC ;


 int h5_reset_rx (struct h5*) ;
 int set_bit (int ,int *) ;
 int skb_put_data (int ,unsigned char const*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void h5_unslip_one_byte(struct h5 *h5, unsigned char c)
{
 const u8 delim = SLIP_DELIMITER, esc = SLIP_ESC;
 const u8 *byte = &c;

 if (!test_bit(H5_RX_ESC, &h5->flags) && c == SLIP_ESC) {
  set_bit(H5_RX_ESC, &h5->flags);
  return;
 }

 if (test_and_clear_bit(H5_RX_ESC, &h5->flags)) {
  switch (c) {
  case 129:
   byte = &delim;
   break;
  case 128:
   byte = &esc;
   break;
  default:
   BT_ERR("Invalid esc byte 0x%02hhx", c);
   h5_reset_rx(h5);
   return;
  }
 }

 skb_put_data(h5->rx_skb, byte, 1);
 h5->rx_pending--;

 BT_DBG("unslipped 0x%02hhx, rx_pending %zu", *byte, h5->rx_pending);
}
