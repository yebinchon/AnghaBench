
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,struct crypto_sync_skcipher*) ;
 int crypto_skcipher_encrypt (int ) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,unsigned int,int *) ;
 int skcipher_request_set_sync_tfm (int ,struct crypto_sync_skcipher*) ;
 int skreq ;

__attribute__((used)) static int crypto_aead_copy_sgl(struct crypto_sync_skcipher *null_tfm,
    struct scatterlist *src,
    struct scatterlist *dst, unsigned int len)
{
 SYNC_SKCIPHER_REQUEST_ON_STACK(skreq, null_tfm);

 skcipher_request_set_sync_tfm(skreq, null_tfm);
 skcipher_request_set_callback(skreq, CRYPTO_TFM_REQ_MAY_BACKLOG,
          ((void*)0), ((void*)0));
 skcipher_request_set_crypt(skreq, src, dst, len, ((void*)0));

 return crypto_skcipher_encrypt(skreq);
}
