
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 unsigned int DATA_BUFFER_ALIGNMENT ;
 unsigned int RX_MAX_BUFFER_SIZE ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;

__attribute__((used)) static inline struct sk_buff* alloc_skb_tx(unsigned int size)
{
    struct sk_buff *skb;


    size = RX_MAX_BUFFER_SIZE;
    size = (size + DATA_BUFFER_ALIGNMENT - 1) & ~(DATA_BUFFER_ALIGNMENT - 1);
    skb = dev_alloc_skb(size + DATA_BUFFER_ALIGNMENT);

    if ( skb != ((void*)0) )
        skb_reserve(skb, ~((unsigned int)skb->data + (DATA_BUFFER_ALIGNMENT - 1)) & (DATA_BUFFER_ALIGNMENT - 1));
    return skb;
}
