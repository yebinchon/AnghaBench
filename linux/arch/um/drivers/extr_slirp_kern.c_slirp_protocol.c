
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int ETH_P_IP ;
 unsigned short htons (int ) ;

__attribute__((used)) static unsigned short slirp_protocol(struct sk_buff *skbuff)
{
 return htons(ETH_P_IP);
}
