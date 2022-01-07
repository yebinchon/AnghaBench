
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bi_status; struct bio* bi_private; } ;


 int bio_put (struct bio*) ;

__attribute__((used)) static struct bio *__bio_chain_endio(struct bio *bio)
{
 struct bio *parent = bio->bi_private;

 if (!parent->bi_status)
  parent->bi_status = bio->bi_status;
 bio_put(bio);
 return parent;
}
