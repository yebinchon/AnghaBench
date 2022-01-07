
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;


 unsigned int DES3_EDE_BLOCK_SIZE ;
 int des3_ede_x86_64_crypt_blk (int const*,int *,int *) ;
 int des3_ede_x86_64_crypt_blk_3way (int const*,int *,int *) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int ecb_crypt(struct skcipher_request *req, const u32 *expkey)
{
 const unsigned int bsize = DES3_EDE_BLOCK_SIZE;
 struct skcipher_walk walk;
 unsigned int nbytes;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while ((nbytes = walk.nbytes)) {
  u8 *wsrc = walk.src.virt.addr;
  u8 *wdst = walk.dst.virt.addr;


  if (nbytes >= bsize * 3) {
   do {
    des3_ede_x86_64_crypt_blk_3way(expkey, wdst,
              wsrc);

    wsrc += bsize * 3;
    wdst += bsize * 3;
    nbytes -= bsize * 3;
   } while (nbytes >= bsize * 3);

   if (nbytes < bsize)
    goto done;
  }


  do {
   des3_ede_x86_64_crypt_blk(expkey, wdst, wsrc);

   wsrc += bsize;
   wdst += bsize;
   nbytes -= bsize;
  } while (nbytes >= bsize);

done:
  err = skcipher_walk_done(&walk, nbytes);
 }

 return err;
}
