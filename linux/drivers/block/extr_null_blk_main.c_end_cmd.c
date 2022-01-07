
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nullb_cmd {TYPE_3__* bio; int error; int rq; TYPE_2__* nq; } ;
struct TYPE_6__ {int bi_status; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int queue_mode; } ;




 int bio_endio (TYPE_3__*) ;
 int blk_mq_end_request (int ,int ) ;
 int free_cmd (struct nullb_cmd*) ;

__attribute__((used)) static void end_cmd(struct nullb_cmd *cmd)
{
 int queue_mode = cmd->nq->dev->queue_mode;

 switch (queue_mode) {
 case 128:
  blk_mq_end_request(cmd->rq, cmd->error);
  return;
 case 129:
  cmd->bio->bi_status = cmd->error;
  bio_endio(cmd->bio);
  break;
 }

 free_cmd(cmd);
}
