
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int * addr; } ;
struct TYPE_5__ {TYPE_4__ virt; } ;
struct TYPE_6__ {int * addr; } ;
struct TYPE_7__ {TYPE_2__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int * iv; TYPE_1__ dst; TYPE_3__ src; } ;
struct crypto_skcipher {int dummy; } ;


 unsigned int crypto_cfb_bsize (struct crypto_skcipher*) ;
 int crypto_cfb_encrypt_one (struct crypto_skcipher*,int *,int *) ;
 int crypto_xor (int *,int *,unsigned int const) ;
 int memcpy (int *,int *,unsigned int const) ;

__attribute__((used)) static int crypto_cfb_decrypt_segment(struct skcipher_walk *walk,
          struct crypto_skcipher *tfm)
{
 const unsigned int bsize = crypto_cfb_bsize(tfm);
 unsigned int nbytes = walk->nbytes;
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 u8 *iv = walk->iv;

 do {
  crypto_cfb_encrypt_one(tfm, iv, dst);
  crypto_xor(dst, src, bsize);
  iv = src;

  src += bsize;
  dst += bsize;
 } while ((nbytes -= bsize) >= bsize);

 memcpy(walk->iv, iv, bsize);

 return nbytes;
}
