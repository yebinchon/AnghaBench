
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_aead {int dummy; } ;
struct aead_request {int * iv; scalar_t__ assoclen; } ;
typedef scalar_t__ __be32 ;


 int AES_BLOCK_SIZE ;
 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ cpu_to_be32 (int) ;
 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int memcpy (int*,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int ccm_init_mac(struct aead_request *req, u8 maciv[], u32 msglen)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 __be32 *n = (__be32 *)&maciv[AES_BLOCK_SIZE - 8];
 u32 l = req->iv[0] + 1;


 if (l < 2 || l > 8)
  return -EINVAL;


 if (l < 4 && msglen >> (8 * l))
  return -EOVERFLOW;





 n[0] = 0;
 n[1] = cpu_to_be32(msglen);

 memcpy(maciv, req->iv, AES_BLOCK_SIZE - l);
 maciv[0] |= (crypto_aead_authsize(aead) - 2) << 2;
 if (req->assoclen)
  maciv[0] |= 0x40;

 memset(&req->iv[AES_BLOCK_SIZE - l], 0, l);
 return 0;
}
