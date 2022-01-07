
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
struct TYPE_7__ {TYPE_4__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int * iv; TYPE_3__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 int crypto_cipher_blocksize (struct crypto_cipher*) ;
 int crypto_cipher_decrypt_one (struct crypto_cipher*,int *,int *) ;
 int crypto_xor (int *,int * const,int) ;
 int crypto_xor_cpy (int * const,int *,int *,int) ;

__attribute__((used)) static int crypto_pcbc_decrypt_segment(struct skcipher_request *req,
           struct skcipher_walk *walk,
           struct crypto_cipher *tfm)
{
 int bsize = crypto_cipher_blocksize(tfm);
 unsigned int nbytes = walk->nbytes;
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 u8 * const iv = walk->iv;

 do {
  crypto_cipher_decrypt_one(tfm, dst, src);
  crypto_xor(dst, iv, bsize);
  crypto_xor_cpy(iv, dst, src, bsize);

  src += bsize;
  dst += bsize;
 } while ((nbytes -= bsize) >= bsize);

 return nbytes;
}
