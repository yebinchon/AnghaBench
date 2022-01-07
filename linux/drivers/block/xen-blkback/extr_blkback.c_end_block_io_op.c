
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_status; int bi_private; } ;


 int __end_block_io_op (int ,int ) ;
 int bio_put (struct bio*) ;

__attribute__((used)) static void end_block_io_op(struct bio *bio)
{
 __end_block_io_op(bio->bi_private, bio->bi_status);
 bio_put(bio);
}
