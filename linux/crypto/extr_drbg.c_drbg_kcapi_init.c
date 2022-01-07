
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbg_state {int drbg_mutex; } ;
struct crypto_tfm {int dummy; } ;


 struct drbg_state* crypto_tfm_ctx (struct crypto_tfm*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int drbg_kcapi_init(struct crypto_tfm *tfm)
{
 struct drbg_state *drbg = crypto_tfm_ctx(tfm);

 mutex_init(&drbg->drbg_mutex);

 return 0;
}
