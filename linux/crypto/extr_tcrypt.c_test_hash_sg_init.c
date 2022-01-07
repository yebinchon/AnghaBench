
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int PAGE_SIZE ;
 int TVMEMSIZE ;
 int memset (int ,int,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int ,int ) ;
 int * tvmem ;

__attribute__((used)) static void test_hash_sg_init(struct scatterlist *sg)
{
 int i;

 sg_init_table(sg, TVMEMSIZE);
 for (i = 0; i < TVMEMSIZE; i++) {
  sg_set_buf(sg + i, tvmem[i], PAGE_SIZE);
  memset(tvmem[i], 0xff, PAGE_SIZE);
 }
}
