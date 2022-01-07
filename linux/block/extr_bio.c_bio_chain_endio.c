
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __bio_chain_endio (struct bio*) ;
 int bio_endio (int ) ;

__attribute__((used)) static void bio_chain_endio(struct bio *bio)
{
 bio_endio(__bio_chain_endio(bio));
}
