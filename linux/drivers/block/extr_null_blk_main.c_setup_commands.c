
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb_queue {int queue_depth; struct nullb_cmd* cmds; void* tag_map; } ;
struct TYPE_2__ {int * next; } ;
struct nullb_cmd {unsigned int tag; TYPE_1__ ll_list; int list; } ;


 int ALIGN (int,int) ;
 int BITS_PER_LONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct nullb_cmd*) ;

__attribute__((used)) static int setup_commands(struct nullb_queue *nq)
{
 struct nullb_cmd *cmd;
 int i, tag_size;

 nq->cmds = kcalloc(nq->queue_depth, sizeof(*cmd), GFP_KERNEL);
 if (!nq->cmds)
  return -ENOMEM;

 tag_size = ALIGN(nq->queue_depth, BITS_PER_LONG) / BITS_PER_LONG;
 nq->tag_map = kcalloc(tag_size, sizeof(unsigned long), GFP_KERNEL);
 if (!nq->tag_map) {
  kfree(nq->cmds);
  return -ENOMEM;
 }

 for (i = 0; i < nq->queue_depth; i++) {
  cmd = &nq->cmds[i];
  INIT_LIST_HEAD(&cmd->list);
  cmd->ll_list.next = ((void*)0);
  cmd->tag = -1U;
 }

 return 0;
}
