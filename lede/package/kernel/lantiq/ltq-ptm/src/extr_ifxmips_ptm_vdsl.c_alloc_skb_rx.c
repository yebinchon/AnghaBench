
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; scalar_t__ end; } ;
typedef int skb ;


 int DATA_BUFFER_ALIGNMENT ;
 scalar_t__ RX_MAX_BUFFER_SIZE ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dma_cache_inv (unsigned long,unsigned int) ;
 int dma_cache_wback_inv (unsigned long,int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 int wmb () ;

__attribute__((used)) static inline struct sk_buff* alloc_skb_rx(void)
{
    struct sk_buff *skb;


    skb = dev_alloc_skb(RX_MAX_BUFFER_SIZE + DATA_BUFFER_ALIGNMENT);
    if ( skb != ((void*)0) ) {

        if ( ((unsigned int)skb->data & (DATA_BUFFER_ALIGNMENT - 1)) != 0 )
            skb_reserve(skb, ~((unsigned int)skb->data + (DATA_BUFFER_ALIGNMENT - 1)) & (DATA_BUFFER_ALIGNMENT - 1));

        *((struct sk_buff **)skb->data - 1) = skb;
        wmb();

        dma_cache_wback_inv((unsigned long)skb->data - sizeof(skb), sizeof(skb));

        dma_cache_inv((unsigned long)skb->data, (unsigned int)skb->end - (unsigned int)skb->data);
    }

    return skb;
}
