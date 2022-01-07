
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_pool {scalar_t__ len; int queue; } ;
struct idt77252_dev {int dummy; } ;


 int skb_queue_head_init (int *) ;

__attribute__((used)) static void
flush_rx_pool(struct idt77252_dev *card, struct rx_pool *rpp)
{
 skb_queue_head_init(&rpp->queue);
 rpp->len = 0;
}
