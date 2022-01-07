
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ieee754dp {int sign; int bexp; int mant; } ;
typedef int u64 ;


 int DP_EBIAS ;
 int DP_EMAX ;
 int DP_EMIN ;
 int DP_FBITS ;
 int assert (int) ;

__attribute__((used)) static inline union ieee754dp builddp(int s, int bx, u64 m)
{
 union ieee754dp r;

 assert((s) == 0 || (s) == 1);
 assert((bx) >= DP_EMIN - 1 + DP_EBIAS
        && (bx) <= DP_EMAX + 1 + DP_EBIAS);
 assert(((m) >> DP_FBITS) == 0);

 r.sign = s;
 r.bexp = bx;
 r.mant = m;

 return r;
}
