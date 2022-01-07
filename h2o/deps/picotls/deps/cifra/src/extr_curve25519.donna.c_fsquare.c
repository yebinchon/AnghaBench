
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;


 int freduce_coefficients (int *) ;
 int freduce_degree (int *) ;
 int fsquare_inner (int *,int const*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
fsquare(limb *output, const limb *in) {
  limb t[19];
  fsquare_inner(t, in);



  freduce_degree(t);
  freduce_coefficients(t);

  memcpy(output, t, sizeof(limb) * 10);
}
