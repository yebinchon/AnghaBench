
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nan2008; } ;


 int INT_MAX ;
 int INT_MIN ;
 TYPE_1__ ieee754_csr ;

__attribute__((used)) static inline int ieee754si_overflow(int xs)
{
 return ieee754_csr.nan2008 && xs ? INT_MIN : INT_MAX;
}
