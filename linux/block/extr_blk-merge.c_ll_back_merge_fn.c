
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;
struct bio {int dummy; } ;


 scalar_t__ bio_sectors (struct bio*) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 scalar_t__ blk_rq_get_max_sectors (struct request*,int ) ;
 int blk_rq_pos (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 scalar_t__ integrity_req_gap_back_merge (struct request*,struct bio*) ;
 int ll_new_hw_segment (struct request*,struct bio*,unsigned int) ;
 scalar_t__ req_gap_back_merge (struct request*,struct bio*) ;
 int req_set_nomerge (int ,struct request*) ;

int ll_back_merge_fn(struct request *req, struct bio *bio, unsigned int nr_segs)
{
 if (req_gap_back_merge(req, bio))
  return 0;
 if (blk_integrity_rq(req) &&
     integrity_req_gap_back_merge(req, bio))
  return 0;
 if (blk_rq_sectors(req) + bio_sectors(bio) >
     blk_rq_get_max_sectors(req, blk_rq_pos(req))) {
  req_set_nomerge(req->q, req);
  return 0;
 }

 return ll_new_hw_segment(req, bio, nr_segs);
}
