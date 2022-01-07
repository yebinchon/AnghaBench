
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;
struct request_queue {int dummy; } ;
struct bio_vec {int bv_len; } ;


 int biovec_phys_mergeable (struct request_queue*,struct bio_vec*,struct bio_vec*) ;
 scalar_t__ queue_max_segment_size (struct request_queue*) ;

__attribute__((used)) static inline bool
__blk_segment_map_sg_merge(struct request_queue *q, struct bio_vec *bvec,
      struct bio_vec *bvprv, struct scatterlist **sg)
{

 int nbytes = bvec->bv_len;

 if (!*sg)
  return 0;

 if ((*sg)->length + nbytes > queue_max_segment_size(q))
  return 0;

 if (!biovec_phys_mergeable(q, bvprv, bvec))
  return 0;

 (*sg)->length += nbytes;

 return 1;
}
