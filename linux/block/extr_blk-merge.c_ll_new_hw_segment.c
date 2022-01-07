
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {scalar_t__ nr_phys_segments; int q; } ;
struct bio {int dummy; } ;


 int blk_integrity_merge_bio (int ,struct request*,struct bio*) ;
 scalar_t__ queue_max_segments (int ) ;
 int req_set_nomerge (int ,struct request*) ;

__attribute__((used)) static inline int ll_new_hw_segment(struct request *req, struct bio *bio,
  unsigned int nr_phys_segs)
{
 if (req->nr_phys_segments + nr_phys_segs > queue_max_segments(req->q))
  goto no_merge;

 if (blk_integrity_merge_bio(req->q, req, bio) == 0)
  goto no_merge;





 req->nr_phys_segments += nr_phys_segs;
 return 1;

no_merge:
 req_set_nomerge(req->q, req);
 return 0;
}
