
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtattr {int dummy; } ;
struct hash_alg_common {int dummy; } ;
struct crypto_alg {int dummy; } ;


 struct hash_alg_common* ERR_CAST (struct crypto_alg*) ;
 scalar_t__ IS_ERR (struct crypto_alg*) ;
 struct hash_alg_common* __crypto_hash_alg_common (struct crypto_alg*) ;
 int crypto_ahash_type ;
 struct crypto_alg* crypto_attr_alg2 (struct rtattr*,int *,int ,int ) ;

struct hash_alg_common *ahash_attr_alg(struct rtattr *rta, u32 type, u32 mask)
{
 struct crypto_alg *alg;

 alg = crypto_attr_alg2(rta, &crypto_ahash_type, type, mask);
 return IS_ERR(alg) ? ERR_CAST(alg) : __crypto_hash_alg_common(alg);
}
