
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_depth; } ;
struct rsxx_cardinfo {scalar_t__ regmap; TYPE_1__ creg_ctrl; } ;
struct creg_completion {int st; unsigned int creg_status; int * cmd_done; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int CREG_TIMEOUT_MSEC ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 scalar_t__ SCRATCH ;
 int cmd_done ;
 int creg_cmd_done_cb ;
 int creg_queue_cmd (struct rsxx_cardinfo*,unsigned int,unsigned int,unsigned int,void*,int,int ,struct creg_completion*) ;
 int creg_reset (struct rsxx_cardinfo*) ;
 int dev_crit (int ,char*) ;
 int dev_warn (int ,char*,int,unsigned int) ;
 int ioread32 (scalar_t__) ;
 unsigned long msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int __issue_creg_rw(struct rsxx_cardinfo *card,
      unsigned int op,
      unsigned int addr,
      unsigned int cnt8,
      void *buf,
      int stream,
      unsigned int *hw_stat)
{
 DECLARE_COMPLETION_ONSTACK(cmd_done);
 struct creg_completion completion;
 unsigned long timeout;
 int st;

 completion.cmd_done = &cmd_done;
 completion.st = 0;
 completion.creg_status = 0;

 st = creg_queue_cmd(card, op, addr, cnt8, buf, stream, creg_cmd_done_cb,
       &completion);
 if (st)
  return st;






 timeout = msecs_to_jiffies(CREG_TIMEOUT_MSEC *
       card->creg_ctrl.q_depth + 20000);





 st = wait_for_completion_timeout(completion.cmd_done, timeout);
 if (st == 0) {




  dev_crit(CARD_TO_DEV(card),
   "cregs timer failed\n");
  creg_reset(card);
  return -EIO;
 }

 *hw_stat = completion.creg_status;

 if (completion.st) {







  ioread32(card->regmap + SCRATCH);

  dev_warn(CARD_TO_DEV(card),
   "creg command failed(%d x%08x)\n",
   completion.st, addr);
  return completion.st;
 }

 return 0;
}
