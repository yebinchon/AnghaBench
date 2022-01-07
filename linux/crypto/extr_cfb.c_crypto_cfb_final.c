
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int * iv; TYPE_2__ dst; TYPE_4__ src; } ;
struct crypto_skcipher {int dummy; } ;


 int MAX_CIPHER_ALIGNMASK ;
 int MAX_CIPHER_BLOCKSIZE ;
 int * PTR_ALIGN (int *,unsigned long const) ;
 int crypto_cfb_encrypt_one (struct crypto_skcipher*,int *,int *) ;
 unsigned long crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 int crypto_xor_cpy (int *,int *,int *,unsigned int) ;

__attribute__((used)) static void crypto_cfb_final(struct skcipher_walk *walk,
        struct crypto_skcipher *tfm)
{
 const unsigned long alignmask = crypto_skcipher_alignmask(tfm);
 u8 tmp[MAX_CIPHER_BLOCKSIZE + MAX_CIPHER_ALIGNMASK];
 u8 *stream = PTR_ALIGN(tmp + 0, alignmask + 1);
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 u8 *iv = walk->iv;
 unsigned int nbytes = walk->nbytes;

 crypto_cfb_encrypt_one(tfm, iv, stream);
 crypto_xor_cpy(dst, stream, src, nbytes);
}
