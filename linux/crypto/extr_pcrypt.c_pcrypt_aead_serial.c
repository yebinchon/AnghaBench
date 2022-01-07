
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcrypt_request {int dummy; } ;
struct padata_priv {int info; } ;
struct TYPE_2__ {int data; } ;
struct aead_request {TYPE_1__ base; } ;


 int aead_request_complete (int ,int ) ;
 struct pcrypt_request* pcrypt_padata_request (struct padata_priv*) ;
 struct aead_request* pcrypt_request_ctx (struct pcrypt_request*) ;

__attribute__((used)) static void pcrypt_aead_serial(struct padata_priv *padata)
{
 struct pcrypt_request *preq = pcrypt_padata_request(padata);
 struct aead_request *req = pcrypt_request_ctx(preq);

 aead_request_complete(req->base.data, padata->info);
}
