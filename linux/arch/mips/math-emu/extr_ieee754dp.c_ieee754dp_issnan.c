
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ieee754dp {int dummy; } ieee754dp ;
struct TYPE_2__ {int nan2008; } ;


 int DPMANT (union ieee754dp) ;
 scalar_t__ DP_FBITS ;
 int DP_MBIT (scalar_t__) ;
 int assert (int ) ;
 TYPE_1__ ieee754_csr ;
 int ieee754dp_isnan (union ieee754dp) ;

__attribute__((used)) static inline int ieee754dp_issnan(union ieee754dp x)
{
 int qbit;

 assert(ieee754dp_isnan(x));
 qbit = (DPMANT(x) & DP_MBIT(DP_FBITS - 1)) == DP_MBIT(DP_FBITS - 1);
 return ieee754_csr.nan2008 ^ qbit;
}
