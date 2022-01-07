
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int limb ;


 int cmult (int *,int *,int*,int *) ;
 int crecip (int *,int *) ;
 int fcontract (int*,int *) ;
 int fexpand (int *,int const*) ;
 int fmul (int *,int *,int *) ;

void cf_curve25519_mul(u8 out[32], const u8 scalar[32], const u8 point[32])
{
  limb bp[10], x[10], z[11], zmone[10];
  uint8_t e[32];
  int i;

  for (i = 0; i < 32; ++i) e[i] = scalar[i];
  e[0] &= 248;
  e[31] &= 127;
  e[31] |= 64;

  fexpand(bp, point);
  cmult(x, z, e, bp);
  crecip(zmone, z);
  fmul(z, x, zmone);
  fcontract(out, z);
}
