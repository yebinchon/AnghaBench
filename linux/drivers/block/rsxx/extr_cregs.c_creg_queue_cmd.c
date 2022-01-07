
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int q_depth; int queue; scalar_t__ reset; } ;
struct rsxx_cardinfo {TYPE_1__ creg_ctrl; int halt; } ;
struct creg_cmd {unsigned int op; unsigned int addr; unsigned int cnt8; int stream; int list; scalar_t__ status; void* cb_private; int cb; void* buf; } ;
typedef int creg_cmd_cb ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int MAX_CREG_DATA8 ;
 int creg_cmd_pool ;
 int creg_kick_queue (struct rsxx_cardinfo*) ;
 struct creg_cmd* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int creg_queue_cmd(struct rsxx_cardinfo *card,
     unsigned int op,
     unsigned int addr,
     unsigned int cnt8,
     void *buf,
     int stream,
     creg_cmd_cb callback,
     void *cb_private)
{
 struct creg_cmd *cmd;


 if (unlikely(card->halt))
  return -EINVAL;

 if (card->creg_ctrl.reset)
  return -EAGAIN;

 if (cnt8 > MAX_CREG_DATA8)
  return -EINVAL;

 cmd = kmem_cache_alloc(creg_cmd_pool, GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 INIT_LIST_HEAD(&cmd->list);

 cmd->op = op;
 cmd->addr = addr;
 cmd->cnt8 = cnt8;
 cmd->buf = buf;
 cmd->stream = stream;
 cmd->cb = callback;
 cmd->cb_private = cb_private;
 cmd->status = 0;

 spin_lock_bh(&card->creg_ctrl.lock);
 list_add_tail(&cmd->list, &card->creg_ctrl.queue);
 card->creg_ctrl.q_depth++;
 creg_kick_queue(card);
 spin_unlock_bh(&card->creg_ctrl.lock);

 return 0;
}
