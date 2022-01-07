
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_integrity {TYPE_1__* profile; } ;
struct bio_integrity_payload {int bip_flags; int bip_work; } ;
struct bio {int bi_status; int bi_disk; } ;
struct TYPE_2__ {scalar_t__ verify_fn; } ;


 int BIP_BLOCK_INTEGRITY ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ REQ_OP_READ ;
 struct bio_integrity_payload* bio_integrity (struct bio*) ;
 int bio_integrity_free (struct bio*) ;
 int bio_integrity_verify_fn ;
 scalar_t__ bio_op (struct bio*) ;
 struct blk_integrity* blk_get_integrity (int ) ;
 int kintegrityd_wq ;
 int queue_work (int ,int *) ;

bool __bio_integrity_endio(struct bio *bio)
{
 struct blk_integrity *bi = blk_get_integrity(bio->bi_disk);
 struct bio_integrity_payload *bip = bio_integrity(bio);

 if (bio_op(bio) == REQ_OP_READ && !bio->bi_status &&
     (bip->bip_flags & BIP_BLOCK_INTEGRITY) && bi->profile->verify_fn) {
  INIT_WORK(&bip->bip_work, bio_integrity_verify_fn);
  queue_work(kintegrityd_wq, &bip->bip_work);
  return 0;
 }

 bio_integrity_free(bio);
 return 1;
}
