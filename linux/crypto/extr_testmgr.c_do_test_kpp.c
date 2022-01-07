
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct kpp_testvec {void* expected_a_public; unsigned int expected_a_public_size; unsigned int b_public_size; unsigned int expected_ss_size; scalar_t__ expected_ss; int b_secret_size; int b_secret; scalar_t__ genkey; int b_public; int secret_size; int secret; } ;
struct kpp_request {int dst; } ;
struct crypto_wait {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int crypto_init_wait (struct crypto_wait*) ;
 int crypto_kpp_compute_shared_secret (struct kpp_request*) ;
 int crypto_kpp_generate_public_key (struct kpp_request*) ;
 unsigned int crypto_kpp_maxsize (struct crypto_kpp*) ;
 int crypto_kpp_set_secret (struct crypto_kpp*,int ,int ) ;
 int crypto_req_done ;
 int crypto_wait_req (int ,struct crypto_wait*) ;
 int kfree (void*) ;
 void* kmemdup (int ,unsigned int,int ) ;
 struct kpp_request* kpp_request_alloc (struct crypto_kpp*,int ) ;
 int kpp_request_free (struct kpp_request*) ;
 int kpp_request_set_callback (struct kpp_request*,int ,int ,struct crypto_wait*) ;
 int kpp_request_set_input (struct kpp_request*,struct scatterlist*,unsigned int) ;
 int kpp_request_set_output (struct kpp_request*,struct scatterlist*,unsigned int) ;
 void* kzalloc (unsigned int,int ) ;
 scalar_t__ memcmp (void*,int ,unsigned int) ;
 int pr_err (char*,char const*,...) ;
 int sg_init_one (struct scatterlist*,void*,unsigned int) ;
 int sg_virt (int ) ;

__attribute__((used)) static int do_test_kpp(struct crypto_kpp *tfm, const struct kpp_testvec *vec,
         const char *alg)
{
 struct kpp_request *req;
 void *input_buf = ((void*)0);
 void *output_buf = ((void*)0);
 void *a_public = ((void*)0);
 void *a_ss = ((void*)0);
 void *shared_secret = ((void*)0);
 struct crypto_wait wait;
 unsigned int out_len_max;
 int err = -ENOMEM;
 struct scatterlist src, dst;

 req = kpp_request_alloc(tfm, GFP_KERNEL);
 if (!req)
  return err;

 crypto_init_wait(&wait);

 err = crypto_kpp_set_secret(tfm, vec->secret, vec->secret_size);
 if (err < 0)
  goto free_req;

 out_len_max = crypto_kpp_maxsize(tfm);
 output_buf = kzalloc(out_len_max, GFP_KERNEL);
 if (!output_buf) {
  err = -ENOMEM;
  goto free_req;
 }


 kpp_request_set_input(req, ((void*)0), 0);
 sg_init_one(&dst, output_buf, out_len_max);
 kpp_request_set_output(req, &dst, out_len_max);
 kpp_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
     crypto_req_done, &wait);


 err = crypto_wait_req(crypto_kpp_generate_public_key(req), &wait);
 if (err) {
  pr_err("alg: %s: Party A: generate public key test failed. err %d\n",
         alg, err);
  goto free_output;
 }

 if (vec->genkey) {

  a_public = kmemdup(sg_virt(req->dst), out_len_max, GFP_KERNEL);
  if (!a_public) {
   err = -ENOMEM;
   goto free_output;
  }
 } else {

  if (memcmp(vec->expected_a_public, sg_virt(req->dst),
      vec->expected_a_public_size)) {
   pr_err("alg: %s: Party A: generate public key test failed. Invalid output\n",
          alg);
   err = -EINVAL;
   goto free_output;
  }
 }


 input_buf = kmemdup(vec->b_public, vec->b_public_size, GFP_KERNEL);
 if (!input_buf) {
  err = -ENOMEM;
  goto free_output;
 }

 sg_init_one(&src, input_buf, vec->b_public_size);
 sg_init_one(&dst, output_buf, out_len_max);
 kpp_request_set_input(req, &src, vec->b_public_size);
 kpp_request_set_output(req, &dst, out_len_max);
 kpp_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
     crypto_req_done, &wait);
 err = crypto_wait_req(crypto_kpp_compute_shared_secret(req), &wait);
 if (err) {
  pr_err("alg: %s: Party A: compute shared secret test failed. err %d\n",
         alg, err);
  goto free_all;
 }

 if (vec->genkey) {

  a_ss = kmemdup(sg_virt(req->dst), vec->expected_ss_size, GFP_KERNEL);
  if (!a_ss) {
   err = -ENOMEM;
   goto free_all;
  }





  err = crypto_kpp_set_secret(tfm, vec->b_secret,
         vec->b_secret_size);
  if (err < 0)
   goto free_all;

  sg_init_one(&src, a_public, vec->expected_a_public_size);
  sg_init_one(&dst, output_buf, out_len_max);
  kpp_request_set_input(req, &src, vec->expected_a_public_size);
  kpp_request_set_output(req, &dst, out_len_max);
  kpp_request_set_callback(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
      crypto_req_done, &wait);
  err = crypto_wait_req(crypto_kpp_compute_shared_secret(req),
          &wait);
  if (err) {
   pr_err("alg: %s: Party B: compute shared secret failed. err %d\n",
          alg, err);
   goto free_all;
  }

  shared_secret = a_ss;
 } else {
  shared_secret = (void *)vec->expected_ss;
 }





 if (memcmp(shared_secret, sg_virt(req->dst),
     vec->expected_ss_size)) {
  pr_err("alg: %s: compute shared secret test failed. Invalid output\n",
         alg);
  err = -EINVAL;
 }

free_all:
 kfree(a_ss);
 kfree(input_buf);
free_output:
 kfree(a_public);
 kfree(output_buf);
free_req:
 kpp_request_free(req);
 return err;
}
