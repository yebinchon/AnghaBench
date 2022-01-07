
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct drbg_state {int fips_primed; int prev; TYPE_2__ test_data; TYPE_1__* core; } ;
struct TYPE_3__ {int flags; } ;


 int CONFIG_CRYPTO_FIPS ;
 int EAGAIN ;
 int IS_ENABLED (int ) ;
 unsigned short drbg_sec_strength (int ) ;
 int fips_enabled ;
 scalar_t__ list_empty (int *) ;
 int memcmp (int ,unsigned char const*,unsigned short) ;
 int memcpy (int ,unsigned char const*,unsigned short) ;
 int panic (char*) ;

__attribute__((used)) static int drbg_fips_continuous_test(struct drbg_state *drbg,
         const unsigned char *entropy)
{
 unsigned short entropylen = drbg_sec_strength(drbg->core->flags);
 int ret = 0;

 if (!IS_ENABLED(CONFIG_CRYPTO_FIPS))
  return 0;


 if (list_empty(&drbg->test_data.list))
  return 0;

 if (!fips_enabled)
  return 0;

 if (!drbg->fips_primed) {

  memcpy(drbg->prev, entropy, entropylen);
  drbg->fips_primed = 1;

  return -EAGAIN;
 }
 ret = memcmp(drbg->prev, entropy, entropylen);
 if (!ret)
  panic("DRBG continuous self test failed\n");
 memcpy(drbg->prev, entropy, entropylen);


 return 0;
}
