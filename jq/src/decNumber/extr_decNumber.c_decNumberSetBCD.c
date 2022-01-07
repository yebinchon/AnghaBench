
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uInt ;
typedef scalar_t__ uByte ;
struct TYPE_4__ {int digits; scalar_t__* lsu; } ;
typedef TYPE_1__ decNumber ;
typedef scalar_t__ Unit ;
typedef scalar_t__ Int ;


 int D2U (int) ;
 scalar_t__ DECDPUN ;
 scalar_t__ MSUDIGITS (int) ;
 scalar_t__ const X10 (scalar_t__) ;

decNumber * decNumberSetBCD(decNumber *dn, const uByte *bcd, uInt n) {
  Unit *up=dn->lsu+D2U(dn->digits)-1;
  const uByte *ub=bcd;





    Int cut=MSUDIGITS(n);
    for (;up>=dn->lsu; up--) {
      *up=0;
      for (; cut>0; ub++, cut--) *up=X10(*up)+*ub;
      cut=DECDPUN;
      }

  dn->digits=n;
  return dn;
  }
