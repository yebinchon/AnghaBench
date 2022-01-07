
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecdh_ctx {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 struct ecdh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;

__attribute__((used)) static inline struct ecdh_ctx *ecdh_get_ctx(struct crypto_kpp *tfm)
{
 return kpp_tfm_ctx(tfm);
}
