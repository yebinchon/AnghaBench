
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int dummy; } ;


 int CPACF_DECRYPT ;
 int CPACF_KM_TDEA_192 ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int ecb_desall_crypt (struct blkcipher_desc*,int,struct blkcipher_walk*) ;

__attribute__((used)) static int ecb_des3_decrypt(struct blkcipher_desc *desc,
       struct scatterlist *dst, struct scatterlist *src,
       unsigned int nbytes)
{
 struct blkcipher_walk walk;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return ecb_desall_crypt(desc, CPACF_KM_TDEA_192 | CPACF_DECRYPT,
    &walk);
}
