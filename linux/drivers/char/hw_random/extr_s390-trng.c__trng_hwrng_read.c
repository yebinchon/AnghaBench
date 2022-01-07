
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int atomic64_add (size_t,int *) ;
 int cpacf_trng (int *,int ,int *,size_t) ;
 int trng_hwrng_counter ;

__attribute__((used)) static inline void _trng_hwrng_read(u8 *buf, size_t len)
{
 cpacf_trng(((void*)0), 0, buf, len);
 atomic64_add(len, &trng_hwrng_counter);
}
