
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int * iv; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 int MAX_CIPHER_BLOCKSIZE ;
 int crypto_cipher_blocksize (struct crypto_cipher*) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int *,int * const) ;
 int crypto_xor (int * const,int *,int) ;
 int crypto_xor_cpy (int * const,int *,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int crypto_pcbc_encrypt_inplace(struct skcipher_request *req,
           struct skcipher_walk *walk,
           struct crypto_cipher *tfm)
{
 int bsize = crypto_cipher_blocksize(tfm);
 unsigned int nbytes = walk->nbytes;
 u8 *src = walk->src.virt.addr;
 u8 * const iv = walk->iv;
 u8 tmpbuf[MAX_CIPHER_BLOCKSIZE];

 do {
  memcpy(tmpbuf, src, bsize);
  crypto_xor(iv, src, bsize);
  crypto_cipher_encrypt_one(tfm, src, iv);
  crypto_xor_cpy(iv, tmpbuf, src, bsize);

  src += bsize;
 } while ((nbytes -= bsize) >= bsize);

 return nbytes;
}
