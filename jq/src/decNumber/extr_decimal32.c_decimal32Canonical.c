
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal32 ;
typedef int decNumber ;
typedef int decContext ;


 int DEC_INIT_DECIMAL32 ;
 int decContextDefault (int *,int ) ;
 int decimal32FromNumber (int *,int *,int *) ;
 int decimal32ToNumber (int const*,int *) ;

decimal32 * decimal32Canonical(decimal32 *result, const decimal32 *d32) {
  decNumber dn;
  decContext dc;
  decContextDefault(&dc, DEC_INIT_DECIMAL32);
  decimal32ToNumber(d32, &dn);
  decimal32FromNumber(result, &dn, &dc);
  return result;
  }
