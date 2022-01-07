
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drbg_string {int dummy; } ;
struct drbg_state {int dummy; } ;
struct crypto_rng {int dummy; } ;


 struct drbg_state* crypto_rng_ctx (struct crypto_rng*) ;
 int drbg_generate_long (struct drbg_state*,int *,unsigned int,struct drbg_string*) ;
 int drbg_string_fill (struct drbg_string*,int const*,unsigned int) ;

__attribute__((used)) static int drbg_kcapi_random(struct crypto_rng *tfm,
        const u8 *src, unsigned int slen,
        u8 *dst, unsigned int dlen)
{
 struct drbg_state *drbg = crypto_rng_ctx(tfm);
 struct drbg_string *addtl = ((void*)0);
 struct drbg_string string;

 if (slen) {

  drbg_string_fill(&string, src, slen);
  addtl = &string;
 }

 return drbg_generate_long(drbg, dst, dlen, addtl);
}
