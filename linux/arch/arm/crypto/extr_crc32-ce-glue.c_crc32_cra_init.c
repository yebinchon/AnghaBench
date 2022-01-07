
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct crypto_tfm {int dummy; } ;


 scalar_t__* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int crc32_cra_init(struct crypto_tfm *tfm)
{
 u32 *key = crypto_tfm_ctx(tfm);

 *key = 0;
 return 0;
}
