
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 int EINPROGRESS ;
 int aead_request_complete (struct aead_request*,int) ;
 int gcm_hash_crypt_remain_continue (struct aead_request*,int ) ;

__attribute__((used)) static void gcm_hash_crypt_remain_done(struct crypto_async_request *areq,
           int err)
{
 struct aead_request *req = areq->data;

 if (err)
  goto out;

 err = gcm_hash_crypt_remain_continue(req, 0);
 if (err == -EINPROGRESS)
  return;

out:
 aead_request_complete(req, err);
}
