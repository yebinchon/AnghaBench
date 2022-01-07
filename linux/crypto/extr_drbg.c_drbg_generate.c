
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbg_string {int list; int len; int * buf; } ;
struct drbg_state {int reseed_threshold; int reseed_ctr; int seeded; TYPE_2__* core; TYPE_1__* d_ops; scalar_t__ pr; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int (* generate ) (struct drbg_state*,unsigned char*,unsigned int,int *) ;} ;


 int DRBG_CTR ;
 int DRBG_HMAC ;
 int EINVAL ;
 int LIST_HEAD (int ) ;
 int addtllist ;
 int alg_test (char*,char*,int ,int ) ;
 int drbg_max_addtl (struct drbg_state*) ;
 unsigned int drbg_max_request_bytes (struct drbg_state*) ;
 int drbg_seed (struct drbg_state*,struct drbg_string*,int) ;
 int drbg_uninstantiate (struct drbg_state*) ;
 int list_add_tail (int *,int *) ;
 int pr_devel (char*,...) ;
 int pr_err (char*) ;
 int stub1 (struct drbg_state*,unsigned char*,unsigned int,int *) ;

__attribute__((used)) static int drbg_generate(struct drbg_state *drbg,
    unsigned char *buf, unsigned int buflen,
    struct drbg_string *addtl)
{
 int len = 0;
 LIST_HEAD(addtllist);

 if (!drbg->core) {
  pr_devel("DRBG: not yet seeded\n");
  return -EINVAL;
 }
 if (0 == buflen || !buf) {
  pr_devel("DRBG: no output buffer provided\n");
  return -EINVAL;
 }
 if (addtl && ((void*)0) == addtl->buf && 0 < addtl->len) {
  pr_devel("DRBG: wrong format of additional information\n");
  return -EINVAL;
 }


 len = -EINVAL;
 if (buflen > (drbg_max_request_bytes(drbg))) {
  pr_devel("DRBG: requested random numbers too large %u\n",
    buflen);
  goto err;
 }




 if (addtl && addtl->len > (drbg_max_addtl(drbg))) {
  pr_devel("DRBG: additional information string too long %zu\n",
    addtl->len);
  goto err;
 }






 if (drbg->reseed_threshold < drbg->reseed_ctr)
  drbg->seeded = 0;

 if (drbg->pr || !drbg->seeded) {
  pr_devel("DRBG: reseeding before generation (prediction "
    "resistance: %s, state %s)\n",
    drbg->pr ? "true" : "false",
    drbg->seeded ? "seeded" : "unseeded");

  len = drbg_seed(drbg, addtl, 1);
  if (len)
   goto err;

  addtl = ((void*)0);
 }

 if (addtl && 0 < addtl->len)
  list_add_tail(&addtl->list, &addtllist);

 len = drbg->d_ops->generate(drbg, buf, buflen, &addtllist);


 drbg->reseed_ctr++;
 if (0 >= len)
  goto err;
 len = 0;
err:
 return len;
}
