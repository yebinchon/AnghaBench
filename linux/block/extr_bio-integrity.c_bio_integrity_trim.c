
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_integrity {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio_integrity_payload {TYPE_1__ bip_iter; } ;
struct bio {int bi_disk; } ;


 struct bio_integrity_payload* bio_integrity (struct bio*) ;
 int bio_integrity_bytes (struct blk_integrity*,int ) ;
 int bio_sectors (struct bio*) ;
 struct blk_integrity* blk_get_integrity (int ) ;

void bio_integrity_trim(struct bio *bio)
{
 struct bio_integrity_payload *bip = bio_integrity(bio);
 struct blk_integrity *bi = blk_get_integrity(bio->bi_disk);

 bip->bip_iter.bi_size = bio_integrity_bytes(bi, bio_sectors(bio));
}
