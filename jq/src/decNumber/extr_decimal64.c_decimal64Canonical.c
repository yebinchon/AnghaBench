
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal64 ;
typedef int decNumber ;
typedef int decContext ;


 int DEC_INIT_DECIMAL64 ;
 int decContextDefault (int *,int ) ;
 int decimal64FromNumber (int *,int *,int *) ;
 int decimal64ToNumber (int const*,int *) ;

decimal64 * decimal64Canonical(decimal64 *result, const decimal64 *d64) {
  decNumber dn;
  decContext dc;
  decContextDefault(&dc, DEC_INIT_DECIMAL64);
  decimal64ToNumber(d64, &dn);
  decimal64FromNumber(result, &dn, &dc);
  return result;
  }
