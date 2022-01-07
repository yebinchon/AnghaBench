
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int digest_len; int load_hash_state; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct dynamic_sa_ctl {TYPE_3__ sa_command_0; } ;
struct crypto4xx_ctx {struct dynamic_sa_ctl* sa_in; } ;
struct TYPE_4__ {int tfm; } ;
struct ahash_request {TYPE_1__ base; } ;


 int SA_LOAD_HASH_FROM_SA ;
 int __crypto_ahash_cast (int ) ;
 int crypto_ahash_digestsize (int ) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;

int crypto4xx_hash_init(struct ahash_request *req)
{
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 int ds;
 struct dynamic_sa_ctl *sa;

 sa = ctx->sa_in;
 ds = crypto_ahash_digestsize(
   __crypto_ahash_cast(req->base.tfm));
 sa->sa_command_0.bf.digest_len = ds >> 2;
 sa->sa_command_0.bf.load_hash_state = SA_LOAD_HASH_FROM_SA;

 return 0;
}
