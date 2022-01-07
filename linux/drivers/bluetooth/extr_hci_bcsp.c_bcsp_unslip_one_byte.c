
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char u8 ;
struct bcsp_struct {int rx_esc_state; int rx_count; int rx_state; TYPE_1__* rx_skb; int message_crc; } ;
struct TYPE_3__ {int* data; } ;




 int BCSP_W4_CRC ;
 int BCSP_W4_PKT_DELIMITER ;
 int BT_ERR (char*,unsigned char) ;
 int bcsp_crc_update (int *,int) ;
 int kfree_skb (TYPE_1__*) ;
 int skb_put_data (TYPE_1__*,unsigned char const*,int) ;

__attribute__((used)) static inline void bcsp_unslip_one_byte(struct bcsp_struct *bcsp, unsigned char byte)
{
 const u8 c0 = 0xc0, db = 0xdb;

 switch (bcsp->rx_esc_state) {
 case 128:
  switch (byte) {
  case 0xdb:
   bcsp->rx_esc_state = 129;
   break;
  default:
   skb_put_data(bcsp->rx_skb, &byte, 1);
   if ((bcsp->rx_skb->data[0] & 0x40) != 0 &&
       bcsp->rx_state != BCSP_W4_CRC)
    bcsp_crc_update(&bcsp->message_crc, byte);
   bcsp->rx_count--;
  }
  break;

 case 129:
  switch (byte) {
  case 0xdc:
   skb_put_data(bcsp->rx_skb, &c0, 1);
   if ((bcsp->rx_skb->data[0] & 0x40) != 0 &&
       bcsp->rx_state != BCSP_W4_CRC)
    bcsp_crc_update(&bcsp->message_crc, 0xc0);
   bcsp->rx_esc_state = 128;
   bcsp->rx_count--;
   break;

  case 0xdd:
   skb_put_data(bcsp->rx_skb, &db, 1);
   if ((bcsp->rx_skb->data[0] & 0x40) != 0 &&
       bcsp->rx_state != BCSP_W4_CRC)
    bcsp_crc_update(&bcsp->message_crc, 0xdb);
   bcsp->rx_esc_state = 128;
   bcsp->rx_count--;
   break;

  default:
   BT_ERR("Invalid byte %02x after esc byte", byte);
   kfree_skb(bcsp->rx_skb);
   bcsp->rx_skb = ((void*)0);
   bcsp->rx_state = BCSP_W4_PKT_DELIMITER;
   bcsp->rx_count = 0;
  }
 }
}
