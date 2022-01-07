
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int partno; scalar_t__ policy; } ;
struct bio {int bi_opf; } ;


 int BDEVNAME_SIZE ;
 int WARN_ONCE (int,char*,int ,int ) ;
 int bio_devname (struct bio*,char*) ;
 int bio_op (struct bio*) ;
 int bio_sectors (struct bio*) ;
 scalar_t__ op_is_flush (int ) ;
 scalar_t__ op_is_write (int const) ;

__attribute__((used)) static inline bool bio_check_ro(struct bio *bio, struct hd_struct *part)
{
 const int op = bio_op(bio);

 if (part->policy && op_is_write(op)) {
  char b[BDEVNAME_SIZE];

  if (op_is_flush(bio->bi_opf) && !bio_sectors(bio))
   return 0;

  WARN_ONCE(1,
         "generic_make_request: Trying to write "
   "to read-only block-device %s (partno %d)\n",
   bio_devname(bio, b), part->partno);

  return 0;
 }

 return 0;
}
