
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_queue {int dummy; } ;


 int GFP_KERNEL ;
 int sbitmap_queue_init_node (struct sbitmap_queue*,unsigned int,int,int,int ,int) ;

__attribute__((used)) static int bt_alloc(struct sbitmap_queue *bt, unsigned int depth,
      bool round_robin, int node)
{
 return sbitmap_queue_init_node(bt, depth, -1, round_robin, GFP_KERNEL,
           node);
}
