
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdc_port {int tag_set; } ;
struct request_queue {struct vdc_port* queuedata; } ;


 int blk_cleanup_queue (struct request_queue*) ;
 int blk_mq_free_tag_set (int *) ;

__attribute__((used)) static void cleanup_queue(struct request_queue *q)
{
 struct vdc_port *port = q->queuedata;

 blk_cleanup_queue(q);
 blk_mq_free_tag_set(&port->tag_set);
}
