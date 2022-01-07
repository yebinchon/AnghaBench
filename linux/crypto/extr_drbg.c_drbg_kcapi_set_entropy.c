
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drbg_state {int drbg_mutex; int test_data; } ;
struct crypto_rng {int dummy; } ;


 struct drbg_state* crypto_rng_ctx (struct crypto_rng*) ;
 int drbg_string_fill (int *,int const*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drbg_kcapi_set_entropy(struct crypto_rng *tfm,
       const u8 *data, unsigned int len)
{
 struct drbg_state *drbg = crypto_rng_ctx(tfm);

 mutex_lock(&drbg->drbg_mutex);
 drbg_string_fill(&drbg->test_data, data, len);
 mutex_unlock(&drbg->drbg_mutex);
}
