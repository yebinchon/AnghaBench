
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hwrng {int dummy; } ;


 int DEBUG_DBG (char*,size_t) ;
 size_t PAGE_SIZE ;
 int _trng_hwrng_read (int *,size_t) ;

__attribute__((used)) static int trng_hwrng_read(struct hwrng *rng, void *data, size_t max, bool wait)
{
 size_t len = max <= PAGE_SIZE ? max : PAGE_SIZE;

 _trng_hwrng_read((u8 *) data, len);

 DEBUG_DBG("trng_hwrng_read()=%zu\n", len);

 return len;
}
