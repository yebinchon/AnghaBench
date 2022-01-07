
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int tag; TYPE_1__* q; } ;
struct mtip_cmd {int status; } ;
struct driver_data {TYPE_2__* port; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_4__ {int svc_wait; int flags; int cmds_to_issue; } ;
struct TYPE_3__ {struct driver_data* queuedata; } ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 int BLK_STS_TIMEOUT ;
 int MTIP_PF_TO_ACTIVE_BIT ;
 int blk_mq_complete_request (struct request*) ;
 struct mtip_cmd* blk_mq_rq_to_pdu (struct request*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static enum blk_eh_timer_return mtip_cmd_timeout(struct request *req,
        bool reserved)
{
 struct driver_data *dd = req->q->queuedata;

 if (reserved) {
  struct mtip_cmd *cmd = blk_mq_rq_to_pdu(req);

  cmd->status = BLK_STS_TIMEOUT;
  blk_mq_complete_request(req);
  return BLK_EH_DONE;
 }

 if (test_bit(req->tag, dd->port->cmds_to_issue))
  goto exit_handler;

 if (test_and_set_bit(MTIP_PF_TO_ACTIVE_BIT, &dd->port->flags))
  goto exit_handler;

 wake_up_interruptible(&dd->port->svc_wait);
exit_handler:
 return BLK_EH_RESET_TIMER;
}
