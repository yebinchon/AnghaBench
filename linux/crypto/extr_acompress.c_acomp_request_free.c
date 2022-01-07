
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_acomp {int (* dst_free ) (int *) ;} ;
struct acomp_req {int flags; int * dst; } ;
struct TYPE_2__ {int * cra_type; } ;


 int CRYPTO_ACOMP_ALLOC_OUTPUT ;
 int __acomp_request_free (struct acomp_req*) ;
 struct crypto_acomp* crypto_acomp_reqtfm (struct acomp_req*) ;
 int crypto_acomp_scomp_free_ctx (struct acomp_req*) ;
 struct crypto_tfm* crypto_acomp_tfm (struct crypto_acomp*) ;
 int crypto_acomp_type ;
 int stub1 (int *) ;

void acomp_request_free(struct acomp_req *req)
{
 struct crypto_acomp *acomp = crypto_acomp_reqtfm(req);
 struct crypto_tfm *tfm = crypto_acomp_tfm(acomp);

 if (tfm->__crt_alg->cra_type != &crypto_acomp_type)
  crypto_acomp_scomp_free_ctx(req);

 if (req->flags & CRYPTO_ACOMP_ALLOC_OUTPUT) {
  acomp->dst_free(req->dst);
  req->dst = ((void*)0);
 }

 __acomp_request_free(req);
}
