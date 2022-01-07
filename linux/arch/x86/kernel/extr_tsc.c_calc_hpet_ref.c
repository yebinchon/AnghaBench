
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int HPET_PERIOD ;
 scalar_t__ div64_u64 (scalar_t__,scalar_t__) ;
 int do_div (scalar_t__,int) ;
 scalar_t__ hpet_readl (int ) ;

__attribute__((used)) static unsigned long calc_hpet_ref(u64 deltatsc, u64 hpet1, u64 hpet2)
{
 u64 tmp;

 if (hpet2 < hpet1)
  hpet2 += 0x100000000ULL;
 hpet2 -= hpet1;
 tmp = ((u64)hpet2 * hpet_readl(HPET_PERIOD));
 do_div(tmp, 1000000);
 deltatsc = div64_u64(deltatsc, tmp);

 return (unsigned long) deltatsc;
}
