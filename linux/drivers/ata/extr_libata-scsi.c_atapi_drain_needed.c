
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int * cmd; } ;


 scalar_t__ ATAPI_MISC ;
 scalar_t__ atapi_cmd_type (int ) ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_is_passthrough (struct request*) ;
 scalar_t__ likely (int) ;
 scalar_t__ op_is_write (int ) ;
 int req_op (struct request*) ;
 TYPE_1__* scsi_req (struct request*) ;

__attribute__((used)) static int atapi_drain_needed(struct request *rq)
{
 if (likely(!blk_rq_is_passthrough(rq)))
  return 0;

 if (!blk_rq_bytes(rq) || op_is_write(req_op(rq)))
  return 0;

 return atapi_cmd_type(scsi_req(rq)->cmd[0]) == ATAPI_MISC;
}
