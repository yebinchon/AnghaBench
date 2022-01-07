
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct aead_request {int iv; } ;


 int EINPROGRESS ;
 struct aead_request* aead_request_ctx (struct aead_request*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int kzfree (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void seqiv_aead_encrypt_complete2(struct aead_request *req, int err)
{
 struct aead_request *subreq = aead_request_ctx(req);
 struct crypto_aead *geniv;

 if (err == -EINPROGRESS)
  return;

 if (err)
  goto out;

 geniv = crypto_aead_reqtfm(req);
 memcpy(req->iv, subreq->iv, crypto_aead_ivsize(geniv));

out:
 kzfree(subreq->iv);
}
