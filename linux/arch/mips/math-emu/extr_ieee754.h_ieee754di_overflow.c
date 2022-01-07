
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_2__ {scalar_t__ nan2008; } ;


 int S64_MAX ;
 int S64_MIN ;
 TYPE_1__ ieee754_csr ;

__attribute__((used)) static inline s64 ieee754di_overflow(int xs)
{
 return ieee754_csr.nan2008 && xs ? S64_MIN : S64_MAX;
}
