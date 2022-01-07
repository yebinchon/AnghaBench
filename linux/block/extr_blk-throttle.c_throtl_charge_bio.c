
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {unsigned int* bytes_disp; unsigned int* last_bytes_disp; int * last_io_disp; int * io_disp; } ;
struct bio {int dummy; } ;


 int BIO_THROTTLED ;
 int bio_data_dir (struct bio*) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_set_flag (struct bio*,int ) ;
 unsigned int throtl_bio_data_size (struct bio*) ;

__attribute__((used)) static void throtl_charge_bio(struct throtl_grp *tg, struct bio *bio)
{
 bool rw = bio_data_dir(bio);
 unsigned int bio_size = throtl_bio_data_size(bio);


 tg->bytes_disp[rw] += bio_size;
 tg->io_disp[rw]++;
 tg->last_bytes_disp[rw] += bio_size;
 tg->last_io_disp[rw]++;







 if (!bio_flagged(bio, BIO_THROTTLED))
  bio_set_flag(bio, BIO_THROTTLED);
}
