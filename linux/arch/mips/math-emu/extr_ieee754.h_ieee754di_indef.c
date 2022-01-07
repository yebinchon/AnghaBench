
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_2__ {scalar_t__ nan2008; } ;


 int S64_MAX ;
 TYPE_1__ ieee754_csr ;

__attribute__((used)) static inline s64 ieee754di_indef(void)
{
 return ieee754_csr.nan2008 ? 0 : S64_MAX;
}
