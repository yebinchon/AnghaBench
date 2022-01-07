
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct skcipher_request {int cryptlen; struct scatterlist* dst; struct scatterlist* src; int iv; } ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_kw_block {int A; int R; } ;
struct crypto_cipher {int dummy; } ;


 int EBADMSG ;
 int EINVAL ;
 int SEMIBSIZE ;
 int cpu_to_be64 (int) ;
 int crypto_cipher_decrypt_one (struct crypto_cipher*,int *,int *) ;
 int crypto_kw_scatterlist_ff (struct scatter_walk*,struct scatterlist*,unsigned int) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int memcpy (int *,int ,int) ;
 int memzero_explicit (struct crypto_kw_block*,int) ;
 int scatterwalk_copychunks (int *,struct scatter_walk*,int,int) ;
 struct crypto_cipher* skcipher_cipher_simple (struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_kw_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_cipher *cipher = skcipher_cipher_simple(tfm);
 struct crypto_kw_block block;
 struct scatterlist *src, *dst;
 u64 t = 6 * ((req->cryptlen) >> 3);
 unsigned int i;
 int ret = 0;





 if (req->cryptlen < (2 * SEMIBSIZE) || req->cryptlen % SEMIBSIZE)
  return -EINVAL;


 memcpy(&block.A, req->iv, SEMIBSIZE);






 src = req->src;
 dst = req->dst;

 for (i = 0; i < 6; i++) {
  struct scatter_walk src_walk, dst_walk;
  unsigned int nbytes = req->cryptlen;

  while (nbytes) {

   crypto_kw_scatterlist_ff(&src_walk, src, nbytes);

   scatterwalk_copychunks(&block.R, &src_walk, SEMIBSIZE,
            0);


   block.A ^= cpu_to_be64(t);
   t--;

   crypto_cipher_decrypt_one(cipher, (u8 *)&block,
        (u8 *)&block);


   crypto_kw_scatterlist_ff(&dst_walk, dst, nbytes);

   scatterwalk_copychunks(&block.R, &dst_walk, SEMIBSIZE,
            1);

   nbytes -= SEMIBSIZE;
  }


  src = req->dst;
  dst = req->dst;
 }


 if (block.A != cpu_to_be64(0xa6a6a6a6a6a6a6a6ULL))
  ret = -EBADMSG;

 memzero_explicit(&block, sizeof(struct crypto_kw_block));

 return ret;
}
