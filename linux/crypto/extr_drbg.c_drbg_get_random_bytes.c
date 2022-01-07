
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbg_state {int dummy; } ;


 int EAGAIN ;
 int drbg_fips_continuous_test (struct drbg_state*,unsigned char*) ;
 int get_random_bytes (unsigned char*,unsigned int) ;

__attribute__((used)) static inline int drbg_get_random_bytes(struct drbg_state *drbg,
     unsigned char *entropy,
     unsigned int entropylen)
{
 int ret;

 do {
  get_random_bytes(entropy, entropylen);
  ret = drbg_fips_continuous_test(drbg, entropy);
  if (ret && ret != -EAGAIN)
   return ret;
 } while (ret);

 return 0;
}
