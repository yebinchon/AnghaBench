
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int bi_status; int bi_opf; int bi_end_io; int * bi_private; TYPE_1__* bi_disk; } ;
struct TYPE_2__ {int lockdep_map; } ;


 int DECLARE_COMPLETION_ONSTACK_MAP (int ,int ) ;
 int REQ_SYNC ;
 int blk_status_to_errno (int ) ;
 int done ;
 int submit_bio (struct bio*) ;
 int submit_bio_wait_endio ;
 int wait_for_completion_io (int *) ;

int submit_bio_wait(struct bio *bio)
{
 DECLARE_COMPLETION_ONSTACK_MAP(done, bio->bi_disk->lockdep_map);

 bio->bi_private = &done;
 bio->bi_end_io = submit_bio_wait_endio;
 bio->bi_opf |= REQ_SYNC;
 submit_bio(bio);
 wait_for_completion_io(&done);

 return blk_status_to_errno(bio->bi_status);
}
