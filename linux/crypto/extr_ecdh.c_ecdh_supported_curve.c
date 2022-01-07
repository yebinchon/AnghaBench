
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ECC_CURVE_NIST_P192_DIGITS ;

 unsigned int ECC_CURVE_NIST_P256_DIGITS ;

__attribute__((used)) static unsigned int ecdh_supported_curve(unsigned int curve_id)
{
 switch (curve_id) {
 case 129: return ECC_CURVE_NIST_P192_DIGITS;
 case 128: return ECC_CURVE_NIST_P256_DIGITS;
 default: return 0;
 }
}
