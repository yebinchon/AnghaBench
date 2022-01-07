
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct loop_cmd {int * bvec; int ref; } ;


 int atomic_dec_and_test (int *) ;
 int blk_mq_complete_request (struct request*) ;
 struct request* blk_mq_rq_from_pdu (struct loop_cmd*) ;
 int kfree (int *) ;

__attribute__((used)) static void lo_rw_aio_do_completion(struct loop_cmd *cmd)
{
 struct request *rq = blk_mq_rq_from_pdu(cmd);

 if (!atomic_dec_and_test(&cmd->ref))
  return;
 kfree(cmd->bvec);
 cmd->bvec = ((void*)0);
 blk_mq_complete_request(rq);
}
