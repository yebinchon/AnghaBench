
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int authsize; } ;
struct aead_request {int assoclen; int* iv; } ;


 unsigned int AES_BLOCK_SIZE ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static inline bool crypto4xx_aead_need_fallback(struct aead_request *req,
      unsigned int len,
      bool is_ccm, bool decrypt)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);


 if (aead->authsize & 3)
  return 1;





 if (len < AES_BLOCK_SIZE)
  return 1;


 if (req->assoclen & 0x3 || req->assoclen > 1020)
  return 1;


 if (is_ccm && !(req->iv[0] == 1 || req->iv[0] == 3))
  return 1;

 return 0;
}
