
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_status; struct bio* bi_private; } ;
typedef int mempool_t ;


 int bounce_end_io (struct bio*,int *) ;
 int copy_to_high_bio_irq (struct bio*,struct bio*) ;

__attribute__((used)) static void __bounce_end_io_read(struct bio *bio, mempool_t *pool)
{
 struct bio *bio_orig = bio->bi_private;

 if (!bio->bi_status)
  copy_to_high_bio_irq(bio_orig, bio);

 bounce_end_io(bio, pool);
}
