
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sg_count_one (struct scatterlist*) ;

__attribute__((used)) static int sg_count_pages(struct scatterlist *sg, int num_sg)
{
 int count;
 int i;

 count = 0;
 for (i = 0; i < num_sg; i++) {
  int err = sg_count_one(sg + i);
  if (err < 0)
   return err;
  count += err;
 }

 return count;
}
