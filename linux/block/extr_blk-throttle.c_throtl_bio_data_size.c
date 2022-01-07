
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 scalar_t__ REQ_OP_DISCARD ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned int throtl_bio_data_size(struct bio *bio)
{

 if (unlikely(bio_op(bio) == REQ_OP_DISCARD))
  return 512;
 return bio->bi_iter.bi_size;
}
