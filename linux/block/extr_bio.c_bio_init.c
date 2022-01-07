
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_vec {int dummy; } ;
struct bio {unsigned short bi_max_vecs; struct bio_vec* bi_io_vec; int __bi_cnt; int __bi_remaining; } ;


 int atomic_set (int *,int) ;
 int memset (struct bio*,int ,int) ;

void bio_init(struct bio *bio, struct bio_vec *table,
       unsigned short max_vecs)
{
 memset(bio, 0, sizeof(*bio));
 atomic_set(&bio->__bi_remaining, 1);
 atomic_set(&bio->__bi_cnt, 1);

 bio->bi_io_vec = table;
 bio->bi_max_vecs = max_vecs;
}
