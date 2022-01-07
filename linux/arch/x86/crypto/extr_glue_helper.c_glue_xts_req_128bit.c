
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_walk {unsigned int nbytes; int iv; } ;
struct skcipher_request {unsigned int cryptlen; int * iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct common_glue_ctx {int fpu_blocks_limit; } ;
typedef int le128 ;
typedef int (* common_glue_func_t ) (void*,int ,int ) ;


 int EINVAL ;
 unsigned int XTS_BLOCK_SIZE ;
 unsigned int __glue_xts_req_128bit (struct common_glue_ctx const*,void*,struct skcipher_walk*) ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int gf128mul_x_ble (int *,int *) ;
 int glue_fpu_begin (unsigned int const,int ,struct skcipher_walk*,int,unsigned int const) ;
 int glue_fpu_end (int) ;
 int * memcpy (int *,int *,unsigned int) ;
 struct scatterlist* scatterwalk_ffwd (struct scatterlist*,struct scatterlist*,unsigned int) ;
 int scatterwalk_map_and_copy (int *,struct scatterlist*,unsigned int,unsigned int,int) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int *) ;
 int skcipher_request_set_tfm (struct skcipher_request*,struct crypto_skcipher*) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;
 scalar_t__ unlikely (int const) ;

int glue_xts_req_128bit(const struct common_glue_ctx *gctx,
   struct skcipher_request *req,
   common_glue_func_t tweak_fn, void *tweak_ctx,
   void *crypt_ctx, bool decrypt)
{
 const bool cts = (req->cryptlen % XTS_BLOCK_SIZE);
 const unsigned int bsize = 128 / 8;
 struct skcipher_request subreq;
 struct skcipher_walk walk;
 bool fpu_enabled = 0;
 unsigned int nbytes, tail;
 int err;

 if (req->cryptlen < XTS_BLOCK_SIZE)
  return -EINVAL;

 if (unlikely(cts)) {
  struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);

  tail = req->cryptlen % XTS_BLOCK_SIZE + XTS_BLOCK_SIZE;

  skcipher_request_set_tfm(&subreq, tfm);
  skcipher_request_set_callback(&subreq,
           crypto_skcipher_get_flags(tfm),
           ((void*)0), ((void*)0));
  skcipher_request_set_crypt(&subreq, req->src, req->dst,
        req->cryptlen - tail, req->iv);
  req = &subreq;
 }

 err = skcipher_walk_virt(&walk, req, 0);
 nbytes = walk.nbytes;
 if (err)
  return err;


 fpu_enabled = glue_fpu_begin(bsize, gctx->fpu_blocks_limit,
         &walk, fpu_enabled,
         nbytes < bsize ? bsize : nbytes);


 tweak_fn(tweak_ctx, walk.iv, walk.iv);

 while (nbytes) {
  nbytes = __glue_xts_req_128bit(gctx, crypt_ctx, &walk);

  err = skcipher_walk_done(&walk, nbytes);
  nbytes = walk.nbytes;
 }

 if (unlikely(cts)) {
  u8 *next_tweak, *final_tweak = req->iv;
  struct scatterlist *src, *dst;
  struct scatterlist s[2], d[2];
  le128 b[2];

  dst = src = scatterwalk_ffwd(s, req->src, req->cryptlen);
  if (req->dst != req->src)
   dst = scatterwalk_ffwd(d, req->dst, req->cryptlen);

  if (decrypt) {
   next_tweak = memcpy(b, req->iv, XTS_BLOCK_SIZE);
   gf128mul_x_ble(b, b);
  } else {
   next_tweak = req->iv;
  }

  skcipher_request_set_crypt(&subreq, src, dst, XTS_BLOCK_SIZE,
        next_tweak);

  err = skcipher_walk_virt(&walk, req, 0) ?:
        skcipher_walk_done(&walk,
    __glue_xts_req_128bit(gctx, crypt_ctx, &walk));
  if (err)
   goto out;

  scatterwalk_map_and_copy(b, dst, 0, XTS_BLOCK_SIZE, 0);
  memcpy(b + 1, b, tail - XTS_BLOCK_SIZE);
  scatterwalk_map_and_copy(b, src, XTS_BLOCK_SIZE,
      tail - XTS_BLOCK_SIZE, 0);
  scatterwalk_map_and_copy(b, dst, 0, tail, 1);

  skcipher_request_set_crypt(&subreq, dst, dst, XTS_BLOCK_SIZE,
        final_tweak);

  err = skcipher_walk_virt(&walk, req, 0) ?:
        skcipher_walk_done(&walk,
    __glue_xts_req_128bit(gctx, crypt_ctx, &walk));
 }

out:
 glue_fpu_end(fpu_enabled);

 return err;
}
