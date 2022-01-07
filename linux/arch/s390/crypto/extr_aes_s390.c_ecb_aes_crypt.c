
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct s390_aes_ctx {unsigned long fc; int key; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int tfm; } ;


 unsigned int AES_BLOCK_SIZE ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int cpacf_km (unsigned long,int ,int ,int ,unsigned int) ;
 struct s390_aes_ctx* crypto_blkcipher_ctx (int ) ;

__attribute__((used)) static int ecb_aes_crypt(struct blkcipher_desc *desc, unsigned long modifier,
    struct blkcipher_walk *walk)
{
 struct s390_aes_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);
 unsigned int nbytes, n;
 int ret;

 ret = blkcipher_walk_virt(desc, walk);
 while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {

  n = nbytes & ~(AES_BLOCK_SIZE - 1);
  cpacf_km(sctx->fc | modifier, sctx->key,
    walk->dst.virt.addr, walk->src.virt.addr, n);
  ret = blkcipher_walk_done(desc, walk, nbytes - n);
 }

 return ret;
}
