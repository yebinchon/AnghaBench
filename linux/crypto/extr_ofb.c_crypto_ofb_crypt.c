
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_7__ {int const* addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int const* addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int const nbytes; int const* const iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 unsigned int crypto_cipher_blocksize (struct crypto_cipher*) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int const* const,int const* const) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int crypto_xor_cpy (int const*,int const*,int const* const,unsigned int const) ;
 struct crypto_cipher* skcipher_cipher_simple (struct crypto_skcipher*) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int crypto_ofb_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_cipher *cipher = skcipher_cipher_simple(tfm);
 const unsigned int bsize = crypto_cipher_blocksize(cipher);
 struct skcipher_walk walk;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes >= bsize) {
  const u8 *src = walk.src.virt.addr;
  u8 *dst = walk.dst.virt.addr;
  u8 * const iv = walk.iv;
  unsigned int nbytes = walk.nbytes;

  do {
   crypto_cipher_encrypt_one(cipher, iv, iv);
   crypto_xor_cpy(dst, src, iv, bsize);
   dst += bsize;
   src += bsize;
  } while ((nbytes -= bsize) >= bsize);

  err = skcipher_walk_done(&walk, nbytes);
 }

 if (walk.nbytes) {
  crypto_cipher_encrypt_one(cipher, walk.iv, walk.iv);
  crypto_xor_cpy(walk.dst.virt.addr, walk.src.virt.addr, walk.iv,
          walk.nbytes);
  err = skcipher_walk_done(&walk, 0);
 }
 return err;
}
