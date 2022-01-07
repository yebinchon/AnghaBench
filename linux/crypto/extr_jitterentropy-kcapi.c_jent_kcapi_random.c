
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jitterentropy {int jent_lock; int entropy_collector; } ;
struct crypto_rng {int dummy; } ;


 struct jitterentropy* crypto_rng_ctx (struct crypto_rng*) ;
 int jent_read_entropy (int ,int *,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int jent_kcapi_random(struct crypto_rng *tfm,
        const u8 *src, unsigned int slen,
        u8 *rdata, unsigned int dlen)
{
 struct jitterentropy *rng = crypto_rng_ctx(tfm);
 int ret = 0;

 spin_lock(&rng->jent_lock);
 ret = jent_read_entropy(rng->entropy_collector, rdata, dlen);
 spin_unlock(&rng->jent_lock);

 return ret;
}
