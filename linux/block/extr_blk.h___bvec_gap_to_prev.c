
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio_vec {unsigned int bv_offset; unsigned int bv_len; } ;


 unsigned int queue_virt_boundary (struct request_queue*) ;

__attribute__((used)) static inline bool __bvec_gap_to_prev(struct request_queue *q,
  struct bio_vec *bprv, unsigned int offset)
{
 return (offset & queue_virt_boundary(q)) ||
  ((bprv->bv_offset + bprv->bv_len) & queue_virt_boundary(q));
}
