
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct s390_aes_ctx {unsigned long fc; int key; } ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int * iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;


 int AES_BLOCK_SIZE ;
 unsigned int __ctrblk_init (int *,int *,unsigned int) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_virt_block (struct blkcipher_desc*,struct blkcipher_walk*,int) ;
 int cpacf_kmctr (unsigned long,int ,int *,int ,int,int *) ;
 struct s390_aes_ctx* crypto_blkcipher_ctx (int ) ;
 int crypto_inc (int *,int) ;
 int * ctrblk ;
 int ctrblk_lock ;
 int memcpy (int *,int *,unsigned int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ctr_aes_crypt(struct blkcipher_desc *desc, unsigned long modifier,
    struct blkcipher_walk *walk)
{
 struct s390_aes_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);
 u8 buf[AES_BLOCK_SIZE], *ctrptr;
 unsigned int n, nbytes;
 int ret, locked;

 locked = mutex_trylock(&ctrblk_lock);

 ret = blkcipher_walk_virt_block(desc, walk, AES_BLOCK_SIZE);
 while ((nbytes = walk->nbytes) >= AES_BLOCK_SIZE) {
  n = AES_BLOCK_SIZE;
  if (nbytes >= 2*AES_BLOCK_SIZE && locked)
   n = __ctrblk_init(ctrblk, walk->iv, nbytes);
  ctrptr = (n > AES_BLOCK_SIZE) ? ctrblk : walk->iv;
  cpacf_kmctr(sctx->fc | modifier, sctx->key,
       walk->dst.virt.addr, walk->src.virt.addr,
       n, ctrptr);
  if (ctrptr == ctrblk)
   memcpy(walk->iv, ctrptr + n - AES_BLOCK_SIZE,
          AES_BLOCK_SIZE);
  crypto_inc(walk->iv, AES_BLOCK_SIZE);
  ret = blkcipher_walk_done(desc, walk, nbytes - n);
 }
 if (locked)
  mutex_unlock(&ctrblk_lock);



 if (nbytes) {
  cpacf_kmctr(sctx->fc | modifier, sctx->key,
       buf, walk->src.virt.addr,
       AES_BLOCK_SIZE, walk->iv);
  memcpy(walk->dst.virt.addr, buf, nbytes);
  crypto_inc(walk->iv, AES_BLOCK_SIZE);
  ret = blkcipher_walk_done(desc, walk, 0);
 }

 return ret;
}
