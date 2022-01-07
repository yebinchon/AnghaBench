
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_5__ {scalar_t__* lsu; int digits; } ;
typedef TYPE_1__ decNumber ;
typedef scalar_t__ Unit ;


 int DECDPUNMAX ;
 int decGetDigits (scalar_t__*,int) ;
 int decNumberZero (TYPE_1__*) ;

decNumber * decNumberFromUInt32(decNumber *dn, uInt uin) {
  Unit *up;
  decNumberZero(dn);
  if (uin==0) return dn;
  for (up=dn->lsu; uin>0; up++) {
    *up=(Unit)(uin%(DECDPUNMAX+1));
    uin=uin/(DECDPUNMAX+1);
    }
  dn->digits=decGetDigits(dn->lsu, up-dn->lsu);
  return dn;
  }
