
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 int aead_request_complete (struct aead_request*,int) ;
 int seqiv_aead_encrypt_complete2 (struct aead_request*,int) ;

__attribute__((used)) static void seqiv_aead_encrypt_complete(struct crypto_async_request *base,
     int err)
{
 struct aead_request *req = base->data;

 seqiv_aead_encrypt_complete2(req, err);
 aead_request_complete(req, err);
}
