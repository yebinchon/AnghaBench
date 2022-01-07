
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct loop_device {int lo_offset; int transfer; } ;
struct loop_cmd {int use_aio; } ;
typedef int loff_t ;


 int EIO ;
 int READ ;





 int WARN_ON_ONCE (int) ;
 int WRITE ;
 struct loop_cmd* blk_mq_rq_to_pdu (struct request*) ;
 scalar_t__ blk_rq_pos (struct request*) ;
 int lo_discard (struct loop_device*,struct request*,int) ;
 int lo_read_simple (struct loop_device*,struct request*,int) ;
 int lo_read_transfer (struct loop_device*,struct request*,int) ;
 int lo_req_flush (struct loop_device*,struct request*) ;
 int lo_rw_aio (struct loop_device*,struct loop_cmd*,int,int ) ;
 int lo_write_simple (struct loop_device*,struct request*,int) ;
 int lo_write_transfer (struct loop_device*,struct request*,int) ;
 int req_op (struct request*) ;

__attribute__((used)) static int do_req_filebacked(struct loop_device *lo, struct request *rq)
{
 struct loop_cmd *cmd = blk_mq_rq_to_pdu(rq);
 loff_t pos = ((loff_t) blk_rq_pos(rq) << 9) + lo->lo_offset;
 switch (req_op(rq)) {
 case 131:
  return lo_req_flush(lo, rq);
 case 132:
 case 128:
  return lo_discard(lo, rq, pos);
 case 129:
  if (lo->transfer)
   return lo_write_transfer(lo, rq, pos);
  else if (cmd->use_aio)
   return lo_rw_aio(lo, cmd, pos, WRITE);
  else
   return lo_write_simple(lo, rq, pos);
 case 130:
  if (lo->transfer)
   return lo_read_transfer(lo, rq, pos);
  else if (cmd->use_aio)
   return lo_rw_aio(lo, cmd, pos, READ);
  else
   return lo_read_simple(lo, rq, pos);
 default:
  WARN_ON_ONCE(1);
  return -EIO;
 }
}
