
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_skcipher {int dummy; } ;


 struct crypto_skcipher* crypto_alloc_tfm (char const*,int *,int ,int ) ;
 int crypto_skcipher_type2 ;

struct crypto_skcipher *crypto_alloc_skcipher(const char *alg_name,
           u32 type, u32 mask)
{
 return crypto_alloc_tfm(alg_name, &crypto_skcipher_type2, type, mask);
}
