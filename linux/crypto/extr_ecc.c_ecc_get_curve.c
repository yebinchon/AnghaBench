
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecc_curve {int dummy; } ;




 int fips_enabled ;
 struct ecc_curve const nist_p192 ;
 struct ecc_curve const nist_p256 ;

__attribute__((used)) static inline const struct ecc_curve *ecc_get_curve(unsigned int curve_id)
{
 switch (curve_id) {

 case 129:
  return fips_enabled ? ((void*)0) : &nist_p192;
 case 128:
  return &nist_p256;
 default:
  return ((void*)0);
 }
}
