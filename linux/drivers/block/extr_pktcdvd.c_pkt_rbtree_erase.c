
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {scalar_t__ bio_queue_size; int rb_pool; int bio_queue; } ;
struct pkt_rb_node {int rb_node; } ;


 int BUG_ON (int) ;
 int mempool_free (struct pkt_rb_node*,int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void pkt_rbtree_erase(struct pktcdvd_device *pd, struct pkt_rb_node *node)
{
 rb_erase(&node->rb_node, &pd->bio_queue);
 mempool_free(node, &pd->rb_pool);
 pd->bio_queue_size--;
 BUG_ON(pd->bio_queue_size < 0);
}
