
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int XBUFSIZE ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,char*,int) ;

__attribute__((used)) static void sg_init_aead(struct scatterlist *sg, char *xbuf[XBUFSIZE],
    unsigned int buflen, const void *assoc,
    unsigned int aad_size)
{
 int np = (buflen + PAGE_SIZE - 1)/PAGE_SIZE;
 int k, rem;

 if (np > XBUFSIZE) {
  rem = PAGE_SIZE;
  np = XBUFSIZE;
 } else {
  rem = buflen % PAGE_SIZE;
 }

 sg_init_table(sg, np + 1);

 sg_set_buf(&sg[0], assoc, aad_size);

 if (rem)
  np--;
 for (k = 0; k < np; k++)
  sg_set_buf(&sg[k + 1], xbuf[k], PAGE_SIZE);

 if (rem)
  sg_set_buf(&sg[k + 1], xbuf[k], rem);
}
