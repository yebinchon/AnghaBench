
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; int extra_len; int ioprio; int nr_phys_segments; int special_vec; int __data_len; int __sector; } ;


 int RQF_SPECIAL_PAYLOAD ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_pos (struct request*) ;

__attribute__((used)) static void __blk_rq_prep_clone(struct request *dst, struct request *src)
{
 dst->__sector = blk_rq_pos(src);
 dst->__data_len = blk_rq_bytes(src);
 if (src->rq_flags & RQF_SPECIAL_PAYLOAD) {
  dst->rq_flags |= RQF_SPECIAL_PAYLOAD;
  dst->special_vec = src->special_vec;
 }
 dst->nr_phys_segments = src->nr_phys_segments;
 dst->ioprio = src->ioprio;
 dst->extra_len = src->extra_len;
}
