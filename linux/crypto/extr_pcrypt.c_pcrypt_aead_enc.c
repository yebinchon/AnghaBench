
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcrypt_request {int dummy; } ;
struct padata_priv {int info; } ;
struct aead_request {int dummy; } ;


 int EINPROGRESS ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int padata_do_serial (struct padata_priv*) ;
 struct pcrypt_request* pcrypt_padata_request (struct padata_priv*) ;
 struct aead_request* pcrypt_request_ctx (struct pcrypt_request*) ;

__attribute__((used)) static void pcrypt_aead_enc(struct padata_priv *padata)
{
 struct pcrypt_request *preq = pcrypt_padata_request(padata);
 struct aead_request *req = pcrypt_request_ctx(preq);

 padata->info = crypto_aead_encrypt(req);

 if (padata->info == -EINPROGRESS)
  return;

 padata_do_serial(padata);
}
