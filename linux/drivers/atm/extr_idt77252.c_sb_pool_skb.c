
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct idt77252_dev {TYPE_1__* sbpool; } ;
struct TYPE_2__ {struct sk_buff** skb; } ;


 int FBQ_SIZE ;
 unsigned int POOL_INDEX (int ) ;
 unsigned int POOL_QUEUE (int ) ;

__attribute__((used)) static struct sk_buff *
sb_pool_skb(struct idt77252_dev *card, u32 handle)
{
 unsigned int queue, index;

 queue = POOL_QUEUE(handle);
 if (queue > 3)
  return ((void*)0);

 index = POOL_INDEX(handle);
 if (index > FBQ_SIZE - 1)
  return ((void*)0);

 return card->sbpool[queue].skb[index];
}
