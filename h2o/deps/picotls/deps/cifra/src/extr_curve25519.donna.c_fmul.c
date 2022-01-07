
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;


 int fproduct (int *,int const*,int const*) ;
 int freduce_coefficients (int *) ;
 int freduce_degree (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
fmul(limb *output, const limb *in, const limb *in2) {
  limb t[19];
  fproduct(t, in, in2);

  freduce_degree(t);
  freduce_coefficients(t);

  memcpy(output, t, sizeof(limb) * 10);
}
