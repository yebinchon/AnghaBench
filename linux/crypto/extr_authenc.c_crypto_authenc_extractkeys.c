
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtattr {scalar_t__ rta_type; scalar_t__ rta_len; } ;
struct crypto_authenc_keys {unsigned int enckeylen; int authkeylen; int const* enckey; int const* authkey; } ;
struct crypto_authenc_key_param {int enckeylen; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ CRYPTO_AUTHENC_KEYA_PARAM ;
 int EINVAL ;
 int RTA_ALIGNTO ;
 struct crypto_authenc_key_param* RTA_DATA (struct rtattr*) ;
 int RTA_OK (struct rtattr*,unsigned int) ;
 int RTA_PAYLOAD (struct rtattr*) ;
 unsigned int be32_to_cpu (int ) ;

int crypto_authenc_extractkeys(struct crypto_authenc_keys *keys, const u8 *key,
          unsigned int keylen)
{
 struct rtattr *rta = (struct rtattr *)key;
 struct crypto_authenc_key_param *param;

 if (!RTA_OK(rta, keylen))
  return -EINVAL;
 if (rta->rta_type != CRYPTO_AUTHENC_KEYA_PARAM)
  return -EINVAL;







 if (RTA_PAYLOAD(rta) != sizeof(*param))
  return -EINVAL;
 BUILD_BUG_ON(sizeof(*param) % RTA_ALIGNTO);

 param = RTA_DATA(rta);
 keys->enckeylen = be32_to_cpu(param->enckeylen);

 key += rta->rta_len;
 keylen -= rta->rta_len;

 if (keylen < keys->enckeylen)
  return -EINVAL;

 keys->authkeylen = keylen - keys->enckeylen;
 keys->authkey = key;
 keys->enckey = key + keys->authkeylen;

 return 0;
}
