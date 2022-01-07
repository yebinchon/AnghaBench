
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_integrity {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio_integrity_payload {TYPE_1__ bip_iter; int bip_vec; } ;
struct bio {int bi_disk; } ;


 struct bio_integrity_payload* bio_integrity (struct bio*) ;
 unsigned int bio_integrity_bytes (struct blk_integrity*,unsigned int) ;
 struct blk_integrity* blk_get_integrity (int ) ;
 int bvec_iter_advance (int ,TYPE_1__*,unsigned int) ;

void bio_integrity_advance(struct bio *bio, unsigned int bytes_done)
{
 struct bio_integrity_payload *bip = bio_integrity(bio);
 struct blk_integrity *bi = blk_get_integrity(bio->bi_disk);
 unsigned bytes = bio_integrity_bytes(bi, bytes_done >> 9);

 bip->bip_iter.bi_sector += bytes_done >> 9;
 bvec_iter_advance(bip->bip_vec, &bip->bip_iter, bytes);
}
