
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int dummy; } ;
struct bio_vec {int dummy; } ;
struct bio {int dummy; } ;


 int EIO ;

__attribute__((used)) static int read_from_bdev(struct zram *zram, struct bio_vec *bvec,
   unsigned long entry, struct bio *parent, bool sync)
{
 return -EIO;
}
