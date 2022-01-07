
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 scalar_t__ skb_has_frag_list (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *
fe_next_frag(struct sk_buff *head, struct sk_buff *skb)
{
 if (skb != head)
  return skb->next;

 if (skb_has_frag_list(skb))
  return skb_shinfo(skb)->frag_list;

 return ((void*)0);
}
