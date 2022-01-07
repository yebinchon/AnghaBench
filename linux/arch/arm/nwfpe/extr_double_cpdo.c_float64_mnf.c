
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union float64_components {int* i; int f64; } ;
struct roundingData {int dummy; } ;
typedef int float64 ;



__attribute__((used)) static float64 float64_mnf(struct roundingData *roundData,float64 rFm)
{
 union float64_components u;

 u.f64 = rFm;



 u.i[1] ^= 0x80000000;


 return u.f64;
}
