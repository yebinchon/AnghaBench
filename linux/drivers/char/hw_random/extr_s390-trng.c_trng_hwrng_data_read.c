
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hwrng {int dummy; } ;


 int DEBUG_DBG (char*,size_t) ;
 int _trng_hwrng_read (int *,size_t) ;

__attribute__((used)) static int trng_hwrng_data_read(struct hwrng *rng, u32 *data)
{
 size_t len = sizeof(*data);

 _trng_hwrng_read((u8 *) data, len);

 DEBUG_DBG("trng_hwrng_data_read()=%zu\n", len);

 return len;
}
