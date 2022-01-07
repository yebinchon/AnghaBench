
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_alg {int (* setkey ) (struct crypto_skcipher*,int *,unsigned int) ;} ;
struct crypto_skcipher {int dummy; } ;


 scalar_t__ ALIGN (unsigned long,unsigned long) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 struct skcipher_alg* crypto_skcipher_alg (struct crypto_skcipher*) ;
 unsigned long crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 int * kmalloc (unsigned long,int ) ;
 int kzfree (int *) ;
 int memcpy (int *,int const*,unsigned int) ;
 int stub1 (struct crypto_skcipher*,int *,unsigned int) ;

__attribute__((used)) static int skcipher_setkey_unaligned(struct crypto_skcipher *tfm,
         const u8 *key, unsigned int keylen)
{
 unsigned long alignmask = crypto_skcipher_alignmask(tfm);
 struct skcipher_alg *cipher = crypto_skcipher_alg(tfm);
 u8 *buffer, *alignbuffer;
 unsigned long absize;
 int ret;

 absize = keylen + alignmask;
 buffer = kmalloc(absize, GFP_ATOMIC);
 if (!buffer)
  return -ENOMEM;

 alignbuffer = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);
 memcpy(alignbuffer, key, keylen);
 ret = cipher->setkey(tfm, alignbuffer, keylen);
 kzfree(buffer);
 return ret;
}
