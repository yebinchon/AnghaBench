
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int cx; } ;


 TYPE_1__ ieee754_csr ;

__attribute__((used)) static inline unsigned int ieee754_getcx(void)
{
 return (ieee754_csr.cx);
}
