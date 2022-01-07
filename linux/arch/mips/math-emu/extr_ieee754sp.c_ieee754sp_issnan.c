
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ieee754sp {int dummy; } ieee754sp ;
struct TYPE_2__ {int nan2008; } ;


 int SPMANT (union ieee754sp) ;
 scalar_t__ SP_FBITS ;
 int SP_MBIT (scalar_t__) ;
 int assert (int ) ;
 TYPE_1__ ieee754_csr ;
 int ieee754sp_isnan (union ieee754sp) ;

__attribute__((used)) static inline int ieee754sp_issnan(union ieee754sp x)
{
 int qbit;

 assert(ieee754sp_isnan(x));
 qbit = (SPMANT(x) & SP_MBIT(SP_FBITS - 1)) == SP_MBIT(SP_FBITS - 1);
 return ieee754_csr.nan2008 ^ qbit;
}
