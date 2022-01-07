
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_5__ {int bits; } ;
typedef TYPE_1__ decNumber ;
typedef int Int ;


 int BADINT ;
 int DECNEG ;
 int decNumberFromUInt32 (TYPE_1__*,int) ;

decNumber * decNumberFromInt32(decNumber *dn, Int in) {
  uInt unsig;
  if (in>=0) unsig=in;
   else {
    if (in==BADINT) unsig=(uInt)1073741824*2;
     else unsig=-in;
    }

  decNumberFromUInt32(dn, unsig);
  if (in<0) dn->bits=DECNEG;
  return dn;
  }
