
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal128 ;
typedef int decNumber ;
typedef int decContext ;


 int DEC_INIT_DECIMAL128 ;
 int decContextDefault (int *,int ) ;
 int decimal128FromNumber (int *,int *,int *) ;
 int decimal128ToNumber (int const*,int *) ;

decimal128 * decimal128Canonical(decimal128 *result, const decimal128 *d128) {
  decNumber dn;
  decContext dc;
  decContextDefault(&dc, DEC_INIT_DECIMAL128);
  decimal128ToNumber(d128, &dn);
  decimal128FromNumber(result, &dn, &dc);
  return result;
  }
