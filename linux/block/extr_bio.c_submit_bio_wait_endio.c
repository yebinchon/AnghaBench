
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_private; } ;


 int complete (int ) ;

__attribute__((used)) static void submit_bio_wait_endio(struct bio *bio)
{
 complete(bio->bi_private);
}
