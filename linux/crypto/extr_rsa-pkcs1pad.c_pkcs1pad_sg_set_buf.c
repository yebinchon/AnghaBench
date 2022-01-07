
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,void*,size_t) ;

__attribute__((used)) static void pkcs1pad_sg_set_buf(struct scatterlist *sg, void *buf, size_t len,
  struct scatterlist *next)
{
 int nsegs = next ? 2 : 1;

 sg_init_table(sg, nsegs);
 sg_set_buf(sg, buf, len);

 if (next)
  sg_chain(sg, nsegs, next);
}
