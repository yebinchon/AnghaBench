
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uml_net_private {int user; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct pcap_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_HEADER_OTHER ;
 int pcap_user_read (int,int ,scalar_t__,struct pcap_data*) ;
 int skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static int pcap_read(int fd, struct sk_buff *skb, struct uml_net_private *lp)
{
 return pcap_user_read(fd, skb_mac_header(skb),
         skb->dev->mtu + ETH_HEADER_OTHER,
         (struct pcap_data *) &lp->user);
}
