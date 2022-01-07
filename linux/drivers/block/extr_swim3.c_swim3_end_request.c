
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct floppy_state {struct request* cur_req; } ;
typedef int blk_status_t ;


 int __blk_mq_end_request (struct request*,int ) ;
 unsigned int blk_rq_cur_bytes (struct request*) ;
 scalar_t__ blk_update_request (struct request*,int ,unsigned int) ;
 int swim3_dbg (char*,int ,unsigned int,struct request*) ;

__attribute__((used)) static bool swim3_end_request(struct floppy_state *fs, blk_status_t err, unsigned int nr_bytes)
{
 struct request *req = fs->cur_req;

 swim3_dbg("  end request, err=%d nr_bytes=%d, cur_req=%p\n",
    err, nr_bytes, req);

 if (err)
  nr_bytes = blk_rq_cur_bytes(req);
 if (blk_update_request(req, err, nr_bytes))
  return 1;
 __blk_mq_end_request(req, err);
 fs->cur_req = ((void*)0);
 return 0;
}
