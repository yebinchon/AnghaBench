
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scomp_scratch {int lock; int dst; int src; } ;
struct crypto_scomp {int dummy; } ;
struct crypto_acomp {int dummy; } ;
struct acomp_req {int dlen; int dst; int slen; int src; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int SCOMP_SCRATCH_SIZE ;
 void** acomp_request_ctx (struct acomp_req*) ;
 void** acomp_tfm_ctx (struct crypto_acomp*) ;
 struct crypto_acomp* crypto_acomp_reqtfm (struct acomp_req*) ;
 int crypto_scomp_compress (struct crypto_scomp*,int ,int ,int ,int *,void*) ;
 int crypto_scomp_decompress (struct crypto_scomp*,int ,int ,int ,int *,void*) ;
 struct scomp_scratch* raw_cpu_ptr (int *) ;
 int scatterwalk_map_and_copy (int ,int ,int ,int ,int) ;
 int scomp_scratch ;
 int sgl_alloc (int ,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int scomp_acomp_comp_decomp(struct acomp_req *req, int dir)
{
 struct crypto_acomp *tfm = crypto_acomp_reqtfm(req);
 void **tfm_ctx = acomp_tfm_ctx(tfm);
 struct crypto_scomp *scomp = *tfm_ctx;
 void **ctx = acomp_request_ctx(req);
 struct scomp_scratch *scratch;
 int ret;

 if (!req->src || !req->slen || req->slen > SCOMP_SCRATCH_SIZE)
  return -EINVAL;

 if (req->dst && !req->dlen)
  return -EINVAL;

 if (!req->dlen || req->dlen > SCOMP_SCRATCH_SIZE)
  req->dlen = SCOMP_SCRATCH_SIZE;

 scratch = raw_cpu_ptr(&scomp_scratch);
 spin_lock(&scratch->lock);

 scatterwalk_map_and_copy(scratch->src, req->src, 0, req->slen, 0);
 if (dir)
  ret = crypto_scomp_compress(scomp, scratch->src, req->slen,
         scratch->dst, &req->dlen, *ctx);
 else
  ret = crypto_scomp_decompress(scomp, scratch->src, req->slen,
           scratch->dst, &req->dlen, *ctx);
 if (!ret) {
  if (!req->dst) {
   req->dst = sgl_alloc(req->dlen, GFP_ATOMIC, ((void*)0));
   if (!req->dst) {
    ret = -ENOMEM;
    goto out;
   }
  }
  scatterwalk_map_and_copy(scratch->dst, req->dst, 0, req->dlen,
      1);
 }
out:
 spin_unlock(&scratch->lock);
 return ret;
}
