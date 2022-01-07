
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;




 char const SLIP_ESC_DELIM ;
 char const SLIP_ESC_ESC ;
 int skb_put_data (struct sk_buff*,...) ;

__attribute__((used)) static void h5_slip_one_byte(struct sk_buff *skb, u8 c)
{
 const char esc_delim[2] = { 128, SLIP_ESC_DELIM };
 const char esc_esc[2] = { 128, SLIP_ESC_ESC };

 switch (c) {
 case 129:
  skb_put_data(skb, &esc_delim, 2);
  break;
 case 128:
  skb_put_data(skb, &esc_esc, 2);
  break;
 default:
  skb_put_data(skb, &c, 1);
 }
}
