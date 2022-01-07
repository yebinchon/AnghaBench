
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bvec_iter {int bi_size; } ;
struct bio {struct bvec_iter bi_iter; struct bio* bi_next; } ;


 int bio_copy_data_iter (struct bio*,struct bvec_iter*,struct bio*,struct bvec_iter*) ;

void bio_list_copy_data(struct bio *dst, struct bio *src)
{
 struct bvec_iter src_iter = src->bi_iter;
 struct bvec_iter dst_iter = dst->bi_iter;

 while (1) {
  if (!src_iter.bi_size) {
   src = src->bi_next;
   if (!src)
    break;

   src_iter = src->bi_iter;
  }

  if (!dst_iter.bi_size) {
   dst = dst->bi_next;
   if (!dst)
    break;

   dst_iter = dst->bi_iter;
  }

  bio_copy_data_iter(dst, &dst_iter, src, &src_iter);
 }
}
