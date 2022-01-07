
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_queue {int cmds; int tag_map; } ;


 int kfree (int ) ;

__attribute__((used)) static void cleanup_queue(struct nullb_queue *nq)
{
 kfree(nq->tag_map);
 kfree(nq->cmds);
}
