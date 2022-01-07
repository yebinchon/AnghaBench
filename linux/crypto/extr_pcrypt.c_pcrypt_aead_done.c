
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcrypt_request {int dummy; } ;
struct padata_priv {int info; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 struct pcrypt_request* aead_request_ctx (struct aead_request*) ;
 int padata_do_serial (struct padata_priv*) ;
 struct padata_priv* pcrypt_request_padata (struct pcrypt_request*) ;

__attribute__((used)) static void pcrypt_aead_done(struct crypto_async_request *areq, int err)
{
 struct aead_request *req = areq->data;
 struct pcrypt_request *preq = aead_request_ctx(req);
 struct padata_priv *padata = pcrypt_request_padata(preq);

 padata->info = err;
 req->base.flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

 padata_do_serial(padata);
}
