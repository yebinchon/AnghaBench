
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {struct bio* bio; } ;
struct bio_vec {int bv_offset; } ;
struct bio {int dummy; } ;


 int __bvec_gap_to_prev (struct request_queue*,struct bio_vec*,int) ;
 int bio_get_first_bvec (struct bio*,struct bio_vec*) ;
 int bio_get_last_bvec (struct bio*,struct bio_vec*) ;
 int bio_has_data (struct bio*) ;
 scalar_t__ biovec_phys_mergeable (struct request_queue*,struct bio_vec*,struct bio_vec*) ;
 int queue_virt_boundary (struct request_queue*) ;

__attribute__((used)) static inline bool bio_will_gap(struct request_queue *q,
  struct request *prev_rq, struct bio *prev, struct bio *next)
{
 struct bio_vec pb, nb;

 if (!bio_has_data(prev) || !queue_virt_boundary(q))
  return 0;






 if (prev_rq)
  bio_get_first_bvec(prev_rq->bio, &pb);
 else
  bio_get_first_bvec(prev, &pb);
 if (pb.bv_offset & queue_virt_boundary(q))
  return 1;
 bio_get_last_bvec(prev, &pb);
 bio_get_first_bvec(next, &nb);
 if (biovec_phys_mergeable(q, &pb, &nb))
  return 0;
 return __bvec_gap_to_prev(q, &pb, nb.bv_offset);
}
