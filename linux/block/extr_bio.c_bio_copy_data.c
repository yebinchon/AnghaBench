
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bvec_iter {int dummy; } ;
struct bio {struct bvec_iter bi_iter; } ;


 int bio_copy_data_iter (struct bio*,struct bvec_iter*,struct bio*,struct bvec_iter*) ;

void bio_copy_data(struct bio *dst, struct bio *src)
{
 struct bvec_iter src_iter = src->bi_iter;
 struct bvec_iter dst_iter = dst->bi_iter;

 bio_copy_data_iter(dst, &dst_iter, src, &src_iter);
}
