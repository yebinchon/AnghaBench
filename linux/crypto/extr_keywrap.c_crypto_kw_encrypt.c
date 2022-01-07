
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct skcipher_request {int cryptlen; int iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_kw_block {int A; int R; } ;
struct crypto_cipher {int dummy; } ;


 int EINVAL ;
 int SEMIBSIZE ;
 int cpu_to_be64 (int) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int *,int *) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int memcpy (int ,int *,int) ;
 int memzero_explicit (struct crypto_kw_block*,int) ;
 int scatterwalk_copychunks (int *,struct scatter_walk*,int,int) ;
 int scatterwalk_start (struct scatter_walk*,struct scatterlist*) ;
 struct crypto_cipher* skcipher_cipher_simple (struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_kw_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_cipher *cipher = skcipher_cipher_simple(tfm);
 struct crypto_kw_block block;
 struct scatterlist *src, *dst;
 u64 t = 1;
 unsigned int i;







 if (req->cryptlen < (2 * SEMIBSIZE) || req->cryptlen % SEMIBSIZE)
  return -EINVAL;





 block.A = cpu_to_be64(0xa6a6a6a6a6a6a6a6ULL);






 src = req->src;
 dst = req->dst;

 for (i = 0; i < 6; i++) {
  struct scatter_walk src_walk, dst_walk;
  unsigned int nbytes = req->cryptlen;

  scatterwalk_start(&src_walk, src);
  scatterwalk_start(&dst_walk, dst);

  while (nbytes) {

   scatterwalk_copychunks(&block.R, &src_walk, SEMIBSIZE,
            0);


   crypto_cipher_encrypt_one(cipher, (u8 *)&block,
        (u8 *)&block);

   block.A ^= cpu_to_be64(t);
   t++;


   scatterwalk_copychunks(&block.R, &dst_walk, SEMIBSIZE,
            1);

   nbytes -= SEMIBSIZE;
  }


  src = req->dst;
  dst = req->dst;
 }


 memcpy(req->iv, &block.A, SEMIBSIZE);

 memzero_explicit(&block, sizeof(struct crypto_kw_block));

 return 0;
}
