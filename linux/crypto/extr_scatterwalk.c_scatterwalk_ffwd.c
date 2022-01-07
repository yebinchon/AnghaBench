
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; scalar_t__ offset; } ;


 int scatterwalk_crypto_chain (struct scatterlist*,struct scatterlist*,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,int ,unsigned int,scalar_t__) ;

struct scatterlist *scatterwalk_ffwd(struct scatterlist dst[2],
         struct scatterlist *src,
         unsigned int len)
{
 for (;;) {
  if (!len)
   return src;

  if (src->length > len)
   break;

  len -= src->length;
  src = sg_next(src);
 }

 sg_init_table(dst, 2);
 sg_set_page(dst, sg_page(src), src->length - len, src->offset + len);
 scatterwalk_crypto_chain(dst, sg_next(src), 2);

 return dst;
}
