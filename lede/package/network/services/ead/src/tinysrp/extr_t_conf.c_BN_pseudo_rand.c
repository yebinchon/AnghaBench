
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int bnrand (int,int *,int,int,int) ;

int BN_pseudo_rand(BIGNUM *rnd, int bits, int top, int bottom)
 {
 return bnrand(1, rnd, bits, top, bottom);
 }
