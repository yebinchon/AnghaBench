
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bio_disassociate_blkg (struct bio*) ;

void bio_uninit(struct bio *bio)
{
 bio_disassociate_blkg(bio);
}
