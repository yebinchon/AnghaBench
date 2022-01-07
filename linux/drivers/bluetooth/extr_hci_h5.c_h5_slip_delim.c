
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 char SLIP_DELIMITER ;
 int skb_put_data (struct sk_buff*,char const*,int) ;

__attribute__((used)) static void h5_slip_delim(struct sk_buff *skb)
{
 const char delim = SLIP_DELIMITER;

 skb_put_data(skb, &delim, 1);
}
