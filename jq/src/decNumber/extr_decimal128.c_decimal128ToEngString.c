
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal128 ;
typedef int decNumber ;


 int decNumberToEngString (int *,char*) ;
 int decimal128ToNumber (int const*,int *) ;

char * decimal128ToEngString(const decimal128 *d128, char *string){
  decNumber dn;
  decimal128ToNumber(d128, &dn);
  decNumberToEngString(&dn, string);
  return string;
  }
