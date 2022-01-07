
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int dummy; } ;
struct bio {int bi_status; int bi_disk; } ;


 int BLK_STS_IOERR ;
 int __release (int ) ;
 int bio_endio (struct bio*) ;
 int bio_io_error (struct bio*) ;
 int drbd_err (struct drbd_device*,char*) ;
 scalar_t__ drbd_insert_fault (struct drbd_device*,int) ;
 int generic_make_request (struct bio*) ;
 int local ;

__attribute__((used)) static inline void drbd_generic_make_request(struct drbd_device *device,
          int fault_type, struct bio *bio)
{
 __release(local);
 if (!bio->bi_disk) {
  drbd_err(device, "drbd_generic_make_request: bio->bi_disk == NULL\n");
  bio->bi_status = BLK_STS_IOERR;
  bio_endio(bio);
  return;
 }

 if (drbd_insert_fault(device, fault_type))
  bio_io_error(bio);
 else
  generic_make_request(bio);
}
