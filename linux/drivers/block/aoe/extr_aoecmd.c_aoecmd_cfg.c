
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct sk_buff_head {int dummy; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int aoecmd_cfg_pkts (int ,unsigned char,struct sk_buff_head*) ;
 int aoenet_xmit (struct sk_buff_head*) ;

void
aoecmd_cfg(ushort aoemajor, unsigned char aoeminor)
{
 struct sk_buff_head queue;

 __skb_queue_head_init(&queue);
 aoecmd_cfg_pkts(aoemajor, aoeminor, &queue);
 aoenet_xmit(&queue);
}
