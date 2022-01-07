
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_partno; int bi_disk; } ;


 char const* disk_name (int ,int ,char*) ;

const char *bio_devname(struct bio *bio, char *buf)
{
 return disk_name(bio->bi_disk, bio->bi_partno, buf);
}
