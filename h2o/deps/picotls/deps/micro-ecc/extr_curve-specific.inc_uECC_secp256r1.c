
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uECC_Curve ;


 int curve_secp256r1 ;

uECC_Curve uECC_secp256r1(void) { return &curve_secp256r1; }
