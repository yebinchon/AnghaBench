
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int const mx; } ;


 TYPE_1__ ieee754_csr ;
 int ieee754_setcx (unsigned int const) ;

__attribute__((used)) static inline int ieee754_setandtestcx(const unsigned int x)
{
 ieee754_setcx(x);

 return ieee754_csr.mx & x;
}
