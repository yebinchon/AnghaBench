
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypto_wait {int dummy; } ;
struct crypto_acomp {int dummy; } ;
struct comp_testvec {int inlen; int outlen; int output; int input; } ;
struct acomp_req {int dlen; } ;


 unsigned int COMP_BUF_SIZE ;
 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct acomp_req* acomp_request_alloc (struct crypto_acomp*) ;
 int acomp_request_free (struct acomp_req*) ;
 int acomp_request_set_callback (struct acomp_req*,int ,int ,struct crypto_wait*) ;
 int acomp_request_set_params (struct acomp_req*,struct scatterlist*,struct scatterlist*,int,unsigned int) ;
 int crypto_acomp_compress (struct acomp_req*) ;
 int crypto_acomp_decompress (struct acomp_req*) ;
 int crypto_acomp_tfm (struct crypto_acomp*) ;
 int crypto_init_wait (struct crypto_wait*) ;
 int crypto_req_done ;
 char* crypto_tfm_alg_driver_name (int ) ;
 int crypto_wait_req (int ,struct crypto_wait*) ;
 int hexdump (char*,int) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 void* kmemdup (int ,int,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int ,unsigned int) ;
 int pr_err (char*,...) ;
 int sg_init_one (struct scatterlist*,char*,unsigned int) ;

__attribute__((used)) static int test_acomp(struct crypto_acomp *tfm,
         const struct comp_testvec *ctemplate,
        const struct comp_testvec *dtemplate,
        int ctcount, int dtcount)
{
 const char *algo = crypto_tfm_alg_driver_name(crypto_acomp_tfm(tfm));
 unsigned int i;
 char *output, *decomp_out;
 int ret;
 struct scatterlist src, dst;
 struct acomp_req *req;
 struct crypto_wait wait;

 output = kmalloc(COMP_BUF_SIZE, GFP_KERNEL);
 if (!output)
  return -ENOMEM;

 decomp_out = kmalloc(COMP_BUF_SIZE, GFP_KERNEL);
 if (!decomp_out) {
  kfree(output);
  return -ENOMEM;
 }

 for (i = 0; i < ctcount; i++) {
  unsigned int dlen = COMP_BUF_SIZE;
  int ilen = ctemplate[i].inlen;
  void *input_vec;

  input_vec = kmemdup(ctemplate[i].input, ilen, GFP_KERNEL);
  if (!input_vec) {
   ret = -ENOMEM;
   goto out;
  }

  memset(output, 0, dlen);
  crypto_init_wait(&wait);
  sg_init_one(&src, input_vec, ilen);
  sg_init_one(&dst, output, dlen);

  req = acomp_request_alloc(tfm);
  if (!req) {
   pr_err("alg: acomp: request alloc failed for %s\n",
          algo);
   kfree(input_vec);
   ret = -ENOMEM;
   goto out;
  }

  acomp_request_set_params(req, &src, &dst, ilen, dlen);
  acomp_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
        crypto_req_done, &wait);

  ret = crypto_wait_req(crypto_acomp_compress(req), &wait);
  if (ret) {
   pr_err("alg: acomp: compression failed on test %d for %s: ret=%d\n",
          i + 1, algo, -ret);
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  ilen = req->dlen;
  dlen = COMP_BUF_SIZE;
  sg_init_one(&src, output, ilen);
  sg_init_one(&dst, decomp_out, dlen);
  crypto_init_wait(&wait);
  acomp_request_set_params(req, &src, &dst, ilen, dlen);

  ret = crypto_wait_req(crypto_acomp_decompress(req), &wait);
  if (ret) {
   pr_err("alg: acomp: compression failed on test %d for %s: ret=%d\n",
          i + 1, algo, -ret);
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  if (req->dlen != ctemplate[i].inlen) {
   pr_err("alg: acomp: Compression test %d failed for %s: output len = %d\n",
          i + 1, algo, req->dlen);
   ret = -EINVAL;
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  if (memcmp(input_vec, decomp_out, req->dlen)) {
   pr_err("alg: acomp: Compression test %d failed for %s\n",
          i + 1, algo);
   hexdump(output, req->dlen);
   ret = -EINVAL;
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  kfree(input_vec);
  acomp_request_free(req);
 }

 for (i = 0; i < dtcount; i++) {
  unsigned int dlen = COMP_BUF_SIZE;
  int ilen = dtemplate[i].inlen;
  void *input_vec;

  input_vec = kmemdup(dtemplate[i].input, ilen, GFP_KERNEL);
  if (!input_vec) {
   ret = -ENOMEM;
   goto out;
  }

  memset(output, 0, dlen);
  crypto_init_wait(&wait);
  sg_init_one(&src, input_vec, ilen);
  sg_init_one(&dst, output, dlen);

  req = acomp_request_alloc(tfm);
  if (!req) {
   pr_err("alg: acomp: request alloc failed for %s\n",
          algo);
   kfree(input_vec);
   ret = -ENOMEM;
   goto out;
  }

  acomp_request_set_params(req, &src, &dst, ilen, dlen);
  acomp_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
        crypto_req_done, &wait);

  ret = crypto_wait_req(crypto_acomp_decompress(req), &wait);
  if (ret) {
   pr_err("alg: acomp: decompression failed on test %d for %s: ret=%d\n",
          i + 1, algo, -ret);
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  if (req->dlen != dtemplate[i].outlen) {
   pr_err("alg: acomp: Decompression test %d failed for %s: output len = %d\n",
          i + 1, algo, req->dlen);
   ret = -EINVAL;
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  if (memcmp(output, dtemplate[i].output, req->dlen)) {
   pr_err("alg: acomp: Decompression test %d failed for %s\n",
          i + 1, algo);
   hexdump(output, req->dlen);
   ret = -EINVAL;
   kfree(input_vec);
   acomp_request_free(req);
   goto out;
  }

  kfree(input_vec);
  acomp_request_free(req);
 }

 ret = 0;

out:
 kfree(decomp_out);
 kfree(output);
 return ret;
}
