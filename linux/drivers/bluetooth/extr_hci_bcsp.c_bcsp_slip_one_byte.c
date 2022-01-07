
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int skb_put_data (struct sk_buff*,...) ;

__attribute__((used)) static void bcsp_slip_one_byte(struct sk_buff *skb, u8 c)
{
 const char esc_c0[2] = { 0xdb, 0xdc };
 const char esc_db[2] = { 0xdb, 0xdd };

 switch (c) {
 case 0xc0:
  skb_put_data(skb, &esc_c0, 2);
  break;
 case 0xdb:
  skb_put_data(skb, &esc_db, 2);
  break;
 default:
  skb_put_data(skb, &c, 1);
 }
}
