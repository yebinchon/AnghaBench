
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_put_data (struct sk_buff*,char const*,int) ;

__attribute__((used)) static void bcsp_slip_msgdelim(struct sk_buff *skb)
{
 const char pkt_delim = 0xc0;

 skb_put_data(skb, &pkt_delim, 1);
}
